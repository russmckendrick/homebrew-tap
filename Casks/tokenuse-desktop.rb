cask "tokenuse-desktop" do
  version "1.2.6"
  sha256 "7b4e00658221a2bf4b6f1b166f00a7ac6e172d03c43dd6359c52491a3aee10f8"

  url "https://github.com/russmckendrick/tokenuse/releases/download/v#{version}/tokenuse-desktop-macos-arm64.dmg"
  name "Token Use"
  desc "Desktop app for local AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Token Use.app"
end
