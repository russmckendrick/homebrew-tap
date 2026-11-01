cask "tokenuse-desktop" do
  version "1.2.8"
  sha256 "a9a47c512485431f3bb2595ed2bc59848627e35be95ea8b30946c3c7567ae9fa"

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
