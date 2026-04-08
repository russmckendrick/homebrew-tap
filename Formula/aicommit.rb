class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.3/aic-darwin-arm64"
      sha256 "43b743bb2220eac7e5d650940124f1378083115ffbf397ac3b75df667b71b1eb"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.3/aic-darwin-amd64"
      sha256 "f65abd492a256635d28104f633ea2f127ab8556c14632cc8ba3557c889d14951"
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
