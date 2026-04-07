class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.1/aic-darwin-arm64"
      sha256 "7c84969ddd0ee581d19355cdff4021457645a8d96454e0aef36ffd5d2b35ca9d"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.1/aic-darwin-amd64"
      sha256 "3e087439b74252ffa598bfd1cc0804acfa9ab2f9a5f5796c74cd8bb48c4d26af"
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
