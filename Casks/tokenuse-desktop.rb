cask "tokenuse-desktop" do
  version "0.0.14"
  sha256 "785b0202021ea2bfe0ff03cb872105ea5d20732042bba26f84d74b09db5d2fa7"

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
