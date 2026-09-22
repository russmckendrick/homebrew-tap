class Azdocs < Formula
  desc "Audit, explore and document Azure estates from local snapshots"
  homepage "https://github.com/russmckendrick/azdocs"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.0/azdocs-darwin-arm64.tar.gz"
      sha256 "831c87c67c82aa04481bbbd90fa1616e7e2866c96e76cecdc962a17991d21d51"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.0/azdocs-darwin-amd64.tar.gz"
      sha256 "16848b15278b2a582f1a746638bfa73bc5b8205738afcb54189a540c910b65f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.0/azdocs-linux-arm64.tar.gz"
      sha256 "5ced1f19e0708814765092439c9a5011ef8652ca21b0a9b1f725039c61c6e0b1"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.0/azdocs-linux-amd64.tar.gz"
      sha256 "0b8aca72f7aaabf208ce9ca82821f69a1825bf957cff8b6cafe45abf7ac1d0cb"
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
