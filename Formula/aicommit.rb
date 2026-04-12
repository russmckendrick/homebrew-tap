class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.6/aic-darwin-arm64"
      sha256 "7cf68b7989e2e30f5f08e9be3773a671227399f1e3be0f5998e2e94cb3d1adb1"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.6/aic-darwin-amd64"
      sha256 "2a94f1e37310d93f5d14fffbf62a0a215abc64f66e4411fd5a580d10a90f3eba"
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
