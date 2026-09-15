class Azdocs < Formula
  desc "Audit, explore and document Azure estates from local snapshots"
  homepage "https://github.com/russmckendrick/azdocs"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.1/azdocs-darwin-arm64.tar.gz"
      sha256 "c47e69296968ee56674548cf295ab711e1d20d10c3c5982790e5bd921b8aeb65"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.1/azdocs-darwin-amd64.tar.gz"
      sha256 "532dccbed3a70817d9e2588522173c80518f0043450ffb2000747ae57eeb5a58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.1/azdocs-linux-arm64.tar.gz"
      sha256 "baeac669182a13ea3852feb41e01cd4523a636fc3c250f018ef69d8d3df15a3d"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.1/azdocs-linux-amd64.tar.gz"
      sha256 "327466832023730889e07cb44767065e53bf3219a578a25a55244bb0e37f708a"
    end
  end

  def install
    bin.install "azdocs"
    prefix.install "LICENSE", "THIRD_PARTY_NOTICES.md"
    prefix.install "data", "docs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azdocs --version")
  end
end
