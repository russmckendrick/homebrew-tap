class Azdocs < Formula
  desc "Audit, explore and document Azure estates from local snapshots"
  homepage "https://github.com/russmckendrick/azdocs"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.3.0/azdocs-darwin-arm64.tar.gz"
      sha256 "e448205d0c501ccf39823afd1395029556ac84486051faeefcee9bc72f3ac49f"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.3.0/azdocs-darwin-amd64.tar.gz"
      sha256 "124a61a40b3b247ee61dadf024eb601965acf961a4016ec2e897ee09ec1a0090"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.3.0/azdocs-linux-arm64.tar.gz"
      sha256 "4678824c1a0f880bf9312a6c026af93acc43fa9744b74fefc2e5006ff5933e1a"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.3.0/azdocs-linux-amd64.tar.gz"
      sha256 "b75ca715358fc3df0731222ec1c6b26f0c57b162bab3bc00c8488e005770b039"
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
