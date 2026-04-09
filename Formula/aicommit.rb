class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.4/aic-darwin-arm64"
      sha256 "edc6b516c5f235ccfda417a43bdf629ee06334af0c1b305a1d1d422497bb9cfe"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.4/aic-darwin-amd64"
      sha256 "bbe933c29a543bc19962e9e566bb7113a16dd56aa1db54a7c563b031eb9cb95c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "aic-darwin-arm64" => "aic"
    else
      bin.install "aic-darwin-amd64" => "aic"
    end
  end

  test do
    system "#{bin}/aic", "--version"
  end
end
