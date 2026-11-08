class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.1.0/aic-darwin-arm64"
      sha256 "7b219233df1bc52f2e23c14da4748a3da96935613e5c77ec8cbb0eb04a00dc37"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.1.0/aic-darwin-amd64"
      sha256 "eb3c792747564190da8117c8e57ad4c8f703eac8caaa5e6b86ed3b749db3e0bc"
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
