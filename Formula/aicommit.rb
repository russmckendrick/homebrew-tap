class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.5/aic-darwin-arm64"
      sha256 "ba11c30077b2e5895d9e1ac11da22580351f74ed170c510f7ed0c9c34c7847e5"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.5/aic-darwin-amd64"
      sha256 "2568c3e53ddf1223daf5eb695946c4331f8047f15ca63b192998db5bb70d5a89"
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
