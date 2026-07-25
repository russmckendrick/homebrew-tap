class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.3/tokenuse-darwin-arm64"
      sha256 "8bcca726d91eb19c313ca804686335cb7d6f52add0606814e5d0632d65e1fa2c"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.3/tokenuse-darwin-amd64"
      sha256 "c75a8be7dc539f73bce7c5d2386f0e3a7856b5b13ab04fcb2d15dc2a1588862e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.3/tokenuse-linux-arm64"
      sha256 "ac78e84b7ea6e4346ccb8e300538ea0b96705d8bd4bdb63c7a84d288550bda97"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.3/tokenuse-linux-amd64"
      sha256 "504ecb1c7ab057713d96169e0ac66a43d15e425e0a5e18298d31ee5bef2104ee"
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
