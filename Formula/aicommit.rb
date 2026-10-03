class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.10/aic-darwin-arm64"
      sha256 "8626aa988d1499f43d4856bcb2767d18528e4592fb59f03f14c2ac94fdd73ea8"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.10/aic-darwin-amd64"
      sha256 "c6ddb40c9fe3fbeffd300fb461212157769aa777a489abc38f0f0491d859c365"
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
