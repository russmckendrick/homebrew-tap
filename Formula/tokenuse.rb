class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.12/tokenuse-darwin-arm64"
      sha256 "9b51ef52efad3c940ad3e2f4ad2d2feeb0cbce37e25b1466df55e67420a5aace"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.12/tokenuse-darwin-amd64"
      sha256 "22cf537c81a0997127da76bac08115d406ec397ef809e9512e57479d420a82cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.12/tokenuse-linux-arm64"
      sha256 "918356d5338a98856bfe3dbd36eec6db57ff97ac403ce6db4cd5445074290670"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.12/tokenuse-linux-amd64"
      sha256 "3078fda6072a9a9c3c81a91c047a8e3e2451991fe3955a28fd694dc8dc1614b1"
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
