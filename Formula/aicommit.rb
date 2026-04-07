class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.1/aic-darwin-arm64"
      sha256 "69bf833e4864416fb35a2cfda364b1df7fc8cb05a8dcd0188d440cf4a9e0569a"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.1/aic-darwin-amd64"
      sha256 "92aaef520c705235df498047a6f6fee062ecc5bfbdfa462bccd705067305457c"
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
