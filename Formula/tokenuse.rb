class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.7/tokenuse-darwin-arm64"
      sha256 "d03d1c1ebe039ab617c334886a4c4331119a0818dd5ca9debdbab64d05c2cd10"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.7/tokenuse-darwin-amd64"
      sha256 "f52bf1caacfb7cee5d8ca440086490284ef8cd2188d74b56c3a067413f856370"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.7/tokenuse-linux-arm64"
      sha256 "2625a9930aa5725dd41409eac1f135d21aa6c4adefb26403397ec54bdf6d03a0"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.7/tokenuse-linux-amd64"
      sha256 "5324f843ece2fe4d5e20ae7068a3b865536577c9d4e46af65facf134b7ddf093"
    end
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "tokenuse-darwin-arm64" => "tokenuse"
      else
        bin.install "tokenuse-darwin-amd64" => "tokenuse"
      end
    end

    on_linux do
      if Hardware::CPU.arm?
        bin.install "tokenuse-linux-arm64" => "tokenuse"
      else
        bin.install "tokenuse-linux-amd64" => "tokenuse"
      end
    end
  end

  test do
    assert_match "tokenuse", shell_output("#{bin}/tokenuse --version")
  end
end
