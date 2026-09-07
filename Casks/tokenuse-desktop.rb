cask "tokenuse-desktop" do
  version "1.2.5"
  sha256 "1469d989a6c857f6eed09cf65cf0e9975b4fb43dd79da7c3453381d80879e855"

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
