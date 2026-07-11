class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.13/tokenuse-darwin-arm64"
      sha256 "47c51bb36a1298ec9b248a5349a8f62a8e0b8a23bfd0bc8a6e64ad24dddfe5bb"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.13/tokenuse-darwin-amd64"
      sha256 "e5d06198ef75e829ba0a9a6581b00855e52f016c3e1d02df0e25969562757090"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.13/tokenuse-linux-arm64"
      sha256 "558f511d038862710a1c20132efb3a4acd47fda9dad9cd72ae1756a765652af2"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.13/tokenuse-linux-amd64"
      sha256 "d73201bd21dd9c2c05a13317c6b61a0a47071f89e7e6f04ffda6fff8d9fd3fd8"
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
