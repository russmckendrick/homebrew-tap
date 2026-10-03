class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.10/aic-darwin-arm64"
      sha256 "5682aebcb3cb437bf9d2800245f24a5b89d5630fa8535981875fc4c33c1f4050"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.10/aic-darwin-amd64"
      sha256 "8c951f374fd86d8016940eb1cd49f5257fcccf6194cd7fdf92f3d4f4d936f169"
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
