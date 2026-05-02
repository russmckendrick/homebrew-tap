cask "tokenuse-desktop" do
  version "0.0.5"
  sha256 "479f2d44d281708455af9f2d3c7f8b3014c61f46605d2f4091708ebdc1733955"

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
