cask "tokenuse-desktop" do
  version "0.0.13"
  sha256 "de0cb6fd0deb66c36e6522038abc73e5e9ab407734091eb879098d11bbce0b0d"

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
