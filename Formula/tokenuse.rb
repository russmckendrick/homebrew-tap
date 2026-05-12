class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.11/tokenuse-darwin-arm64"
      sha256 "b6fb201d98c06de72483eb9dec07f3baf0d8256155536741226aafaa9f2d36b6"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.11/tokenuse-darwin-amd64"
      sha256 "f1d8d6d720201e3a32532e538259c928a402db7106003dbfcc7950a92e78fdf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.11/tokenuse-linux-arm64"
      sha256 "8dfe8ffd9f9aaa4183aa8e1ccf2b60287acc560e438cf8760a774e2d87ccf39b"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.11/tokenuse-linux-amd64"
      sha256 "96ac6bf8c7fcbddab6f524e726288e1c94f0d62495cf977281270f497ef5f8d7"
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
