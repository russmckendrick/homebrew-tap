cask "tokenuse-desktop" do
  version "1.1.1"
  sha256 "4137a33fde9cb0e03b5d0c17b4164e0ca4540c5beb75d211313a126e66928782"

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
