class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.7/aic-darwin-arm64"
      sha256 "c2ae26e2ab23ba33f8e13fd359bb4f7e3c5224aae2c1a6155fbbd28c5a094784"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.7/aic-darwin-amd64"
      sha256 "c4d9456bc65936da27460370286f69489c52d02fc3944d5258b3f5c2cbdb0f4b"
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
