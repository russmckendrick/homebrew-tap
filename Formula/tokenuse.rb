class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.5/tokenuse-darwin-arm64"
      sha256 "3821ed30c3c540d61c17eba223ac87172b4d01813b9e306bac1b474e66e14531"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.5/tokenuse-darwin-amd64"
      sha256 "bd9689bde9a994d338a0f82f378176aa019f35e403269116fe4f0bb466d4cc1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.5/tokenuse-linux-arm64"
      sha256 "234e7159df0bac046041f8230b1586d6f521c8e09457416da3db2fff397a726b"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.5/tokenuse-linux-amd64"
      sha256 "a8713021ff6d812275b0a9ad99c4cb2e2bc3560dd959958fb9a38c2d5461653d"
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
