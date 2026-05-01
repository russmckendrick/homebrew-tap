cask "tokenuse" do
  version "0.0.4"
  sha256 "88427983c0854c04002e6417ea392f4da858e6f875fed463ed18f27e3648aba5"

  url "https://github.com/russmckendrick/tokenuse/releases/download/v#{version}/tokenuse-desktop-macos-universal.dmg"
  name "Token Use"
  desc "Desktop app for local AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Token Use.app"
end
