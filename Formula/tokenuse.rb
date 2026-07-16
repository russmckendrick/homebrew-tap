class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.0/tokenuse-darwin-arm64"
      sha256 "7cb2b4c049b6ed790105d62413e241145210b6b7b3cf1055f3584b0172bb9f7e"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.0/tokenuse-darwin-amd64"
      sha256 "3505d7784ad050d53ee1a65c864536a06325e035399e2bfa043545e2b08ec778"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.0/tokenuse-linux-arm64"
      sha256 "35fad484daec1666a08a7c1c28b33b69ac7a5f2b687dd2a6decf5ab029447b7b"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.0/tokenuse-linux-amd64"
      sha256 "199b93552bed071a82ecc3a320978e1251d914b4259e054bffecb3ff89b3acdc"
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
