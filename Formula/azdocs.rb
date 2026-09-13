class Azdocs < Formula
  desc "Audit, explore and document Azure estates from local snapshots"
  homepage "https://github.com/russmckendrick/azdocs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.0/azdocs-darwin-arm64.tar.gz"
      sha256 "563978d330c948e835922f6ff667e68645a8bc98fce5bb4367fe3dae92443e31"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.0/azdocs-darwin-amd64.tar.gz"
      sha256 "9ee5f9d9afd015171467a2af353a532ae4507c5d557a4dd2bf6c26b9074909cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.0/azdocs-linux-arm64.tar.gz"
      sha256 "77e1fb725f7c2881b37a6ed0660463db3632f0ce7b1a577256048bdb358a4336"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.1.0/azdocs-linux-amd64.tar.gz"
      sha256 "6336253f2ae9e09bb8b28a30d2acb19aee2078e621229ad015311e2504088259"
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
