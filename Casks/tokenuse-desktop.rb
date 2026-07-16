cask "tokenuse-desktop" do
  version "1.1.0"
  sha256 "3a8732518b721e9d5b7654ca21d967e1db36b64b785a47c7f2e363061c4be2b6"

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
