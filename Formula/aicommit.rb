class Aicommit < Formula
  desc "AI-assisted Git commit messages"
  homepage "https://github.com/russmckendrick/aicommit"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.8/aic-darwin-arm64"
      sha256 "bb6630fe57789ea7a087b685c7d543027ce8fd69d796c2e4042b1184650e1667"
    else
      url "https://github.com/russmckendrick/aicommit/releases/download/v0.0.8/aic-darwin-amd64"
      sha256 "8f506cbab3cb6b7a66807939e743233b55bbf92b4991bf0a2630fcd50be65622"
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
