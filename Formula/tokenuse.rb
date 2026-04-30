class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.1/tokenuse-darwin-arm64"
      sha256 "910216cbdbae1861f50457d797d622e1a0c3e27e9885d3f88d2ba8e1e9941337"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.1/tokenuse-darwin-amd64"
      sha256 "598d23ed53d0211cc80b30d773fb1f55a361a831c9542a62c1a963dcd326131a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.1/tokenuse-linux-arm64"
      sha256 "ce1009e2d6978a0925de486225267d3f819827ca5dd8878e47e2b03a4b6ae265"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.1/tokenuse-linux-amd64"
      sha256 "55e66c05286d1db69ae58002e7bea79fa252d1c0d7843ecee48363ab9a508b4d"
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
