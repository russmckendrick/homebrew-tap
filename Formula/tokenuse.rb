class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.1/tokenuse-darwin-arm64"
      sha256 "606172b277544e63cb659f5085e1a0247a73c13b7947203fd97a3c474258ab7e"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.1/tokenuse-darwin-amd64"
      sha256 "ea56e986e92907af7b08f030e1c5ee295b067982f3fe76413c7bdd5c23c0997d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.1/tokenuse-linux-arm64"
      sha256 "877b21c6b797ae2afd4c896aa1d06ff1c6ea49e87a7f96fed7ca9767cce477e1"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.1/tokenuse-linux-amd64"
      sha256 "0dae39b93ab0cd5e43954506027928a00d411383b51bf45713ae4ad301f687c9"
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
