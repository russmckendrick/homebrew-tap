class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.6/tokenuse-darwin-arm64"
      sha256 "b116f54a1bb8d41397a0f6b4badbb9a5d6a546dbb42248480bf99986fdd599e2"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.6/tokenuse-darwin-amd64"
      sha256 "180abcfeced9c6e24f5858e3afe51e1e6eb108bb302161f2ceafe78f239469cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.6/tokenuse-linux-arm64"
      sha256 "06666910e6c9c354ae57540884a58bb8e0101cc9e6baae98dd3c6f03a231f81f"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.6/tokenuse-linux-amd64"
      sha256 "fb6553278e1ef50394f89fad97b2c09f7a5b59fb0caf87f508702a5c516c0f98"
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
