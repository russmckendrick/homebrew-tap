class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.9/aic-darwin-arm64"
      sha256 "aac8e3af8c2ff808137dc4c1f422cfa573c8f9d4c106e391ed50dd72d65decf1"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.9/aic-darwin-amd64"
      sha256 "4088565ed1c5cf62eafae9e82b78b63d1f40bc19cb02d83520263809185bd545"
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
