class Azdocs < Formula
  desc "Audit, explore and document Azure estates from local snapshots"
  homepage "https://github.com/russmckendrick/azdocs"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.2.0/azdocs-darwin-arm64.tar.gz"
      sha256 "2255166ba68a5c9251a18c97837aed641c3482aa1b9ed8b2d24c62ce8d3fec1a"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.2.0/azdocs-darwin-amd64.tar.gz"
      sha256 "7fcc781243ec08765a51c5783940ab51543970673488b837842e7f35c63ebcee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.2.0/azdocs-linux-arm64.tar.gz"
      sha256 "d26fb5e717f39912b9151f414be5022211e2d90352cf07dc4d9f3495ab9de8f5"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.2.0/azdocs-linux-amd64.tar.gz"
      sha256 "5ff7a4caff25b94083884b4d719554538cd2367f247335a0d2928358c7b332e1"
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
