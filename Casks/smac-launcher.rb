cask "smac-launcher" do
  version "1.1.1"
  sha256 "cbece1b8ae71f5948e4a95b43eea347717fe9f73bdea3b2dc01f487c0a919c4c"

  url "https://github.com/drhelius/smac-gog-mac-launcher/releases/download/#{version}/SMAC-Launcher-#{version}-macOS.zip"
  name "SMAC Launcher"
  desc "Launcher for the GOG edition of Alpha Centauri and Alien Crossfire"
  homepage "https://github.com/drhelius/smac-gog-mac-launcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SMAC Launcher.app"

  uninstall quit: "com.drhelius.centauri"

  zap trash: "~/Library/Preferences/com.drhelius.centauri.plist"

  caveats do
    requires_rosetta
  end
end
