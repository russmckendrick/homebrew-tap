class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.1.1/aic-darwin-arm64"
      sha256 "24a127d10b5fe173dcc0534dd8f5261f03da49f78b980b0b7924fe96ba5498c0"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.1.1/aic-darwin-amd64"
      sha256 "8bbcccf13711c60826807c84c507b2eb63bdaf7301426f471f23907b5647bca5"
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
