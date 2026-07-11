class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.14/tokenuse-darwin-arm64"
      sha256 "04ed27f8cfbd3b3c1156a6e6e44069ca80c5be4b02c2b44535f4294607da4b9f"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.14/tokenuse-darwin-amd64"
      sha256 "a41d7fbb38b1c1dc21fffcd2552412fdd94f5f42f89325267be78f585aee8203"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.14/tokenuse-linux-arm64"
      sha256 "de44a449e000999a88e72008d317b62511c23c71812d4b29a3f15d7a5e028923"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.14/tokenuse-linux-amd64"
      sha256 "bdbb5edaa87cb0857f172caef67099e6611bc52ffff0a0137629ea326b1bd4fe"
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
