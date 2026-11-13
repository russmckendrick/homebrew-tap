class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.1.2/aic-darwin-arm64"
      sha256 "43449ba2bd02ea1500d2e0eb44d632d25d7d5f62b5e8c3ee2fb8e09235e1b4fd"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.1.2/aic-darwin-amd64"
      sha256 "98e9a8ec38790a433e0b246bcace8910dfe1fa04f71dcb7e70fa81ba5ae141e9"
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
