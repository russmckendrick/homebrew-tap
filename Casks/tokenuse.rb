cask "tokenuse" do
  version "0.0.2"
  sha256 "3a1302dd01cbeb22eff63eae7454a5b183a44c44e8adec95f0116e58bae74ea7"

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
