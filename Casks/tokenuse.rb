cask "tokenuse" do
  version "0.0.3"
  sha256 "891f9d75fbeb87f6fe5d125f6d0e16dfab2f10828025b312d20c9aeccab78a27"

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
