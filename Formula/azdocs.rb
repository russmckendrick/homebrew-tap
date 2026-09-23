class Azdocs < Formula
  desc "Audit, explore and document Azure estates from local snapshots"
  homepage "https://github.com/russmckendrick/azdocs"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.1/azdocs-darwin-arm64.tar.gz"
      sha256 "a881deeb9ce61d1a69fae17a836b733bc43dec1eb3c2c84d91f6df5a33fa84a2"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.1/azdocs-darwin-amd64.tar.gz"
      sha256 "1c444df7eef0225a549ba685a2ef5397c167b310487e9c7d546480f1627154ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.1/azdocs-linux-arm64.tar.gz"
      sha256 "09f93e2128b43a1fd8021eb11a737ae41bb62105b7feb728f5a1c767d7589625"
    else
      url "https://github.com/russmckendrick/azdocs/releases/download/v0.4.1/azdocs-linux-amd64.tar.gz"
      sha256 "4d6d7d56d4b09699bc69224f3a33fa0b97f8f6c46b4d752a92a24462552ba877"
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
