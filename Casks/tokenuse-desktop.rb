cask "tokenuse-desktop" do
  version "0.0.4"
  sha256 "253b7f1436dd961531272dad15da76ea0c213749b14a59f17a555325dc3ad6f9"

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
