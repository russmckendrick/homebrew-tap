class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.8/tokenuse-darwin-arm64"
      sha256 "1fca2a01367261169c510439723d51366562abed0db9a41548b88e090131eddf"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.8/tokenuse-darwin-amd64"
      sha256 "3e237c9d728c4c987058ddc1994d5bcbca966b3b2c58386cc292d3f0a700a672"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.8/tokenuse-linux-arm64"
      sha256 "aeaed71cd29ad514950f4395be734f659eb231184984e62f5990d7b6882e5880"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.8/tokenuse-linux-amd64"
      sha256 "75e26e5e3627e7a39ded94ef756430a8f197c61422e87591a78e042546f92f46"
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
