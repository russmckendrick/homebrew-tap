class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.0/tokenuse-darwin-arm64"
      sha256 "207778b6f0bb2d3651b41ea26f374f002481fbd23aa1dd95ff18cf7dbd78ce6b"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.0/tokenuse-darwin-amd64"
      sha256 "5cf4f61a49e6a6e1a81e1eb656be4a06585ae40379c0b9c41fc5a859618126b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.0/tokenuse-linux-arm64"
      sha256 "3a1183c5dadd0c17193e6162c050b559c24ca9f6332591ea4dc40869bea65b29"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.0/tokenuse-linux-amd64"
      sha256 "eb1aee214b3283b41cad30b3ceb615eae42648752d60933cdc6c989cff6ee497"
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
