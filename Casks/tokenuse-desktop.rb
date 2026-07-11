cask "tokenuse-desktop" do
  version "0.0.12"
  sha256 "d73e8d2ad0c77f0f8489a0dccd15cd3bc6547469a6d57524dd6416c9b8ae77b7"

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
