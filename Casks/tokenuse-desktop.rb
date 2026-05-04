cask "tokenuse-desktop" do
  version "0.0.8"
  sha256 "1c9c092fcdf72f39caa316b9c33630bb07599df6adc8b272316ca6d9d7930733"

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
