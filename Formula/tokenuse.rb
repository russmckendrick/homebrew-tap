class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.7/tokenuse-darwin-arm64"
      sha256 "ebb1b59439bf83368e677d697a3022d169ebc10be83eea716ae9a2113eb5eab1"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.7/tokenuse-darwin-amd64"
      sha256 "fcea04222f1b0fc0ab4365386a832c7a0adac74fff1d3a30a3110bf4564bf1ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.7/tokenuse-linux-arm64"
      sha256 "27c174bda284ef8a6c85373379a306772e0f2124a0465a8bbbab7bd246a02565"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.7/tokenuse-linux-amd64"
      sha256 "c1e1ece73b06bb6efb2904198d2786ae973431a34737bad301c5dbd82db33aaa"
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
