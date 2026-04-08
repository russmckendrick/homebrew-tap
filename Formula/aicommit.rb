class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.2/aic-darwin-arm64"
      sha256 "efdef0f882327ab2be82bd8f7402aff883b3636b7aa4d517273f73161d5e88cc"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.2/aic-darwin-amd64"
      sha256 "e05a954f0dd771567605b5932f7eedf1ae3a8abe0f331d59eddd58b7dbde1d9b"
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
