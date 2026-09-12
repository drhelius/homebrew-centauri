cask "smac-launcher" do
  version "1.0.0"
  sha256 "e843bc73cc433947c1a8c2cd21e37342cd203b0aca9708db12338be3345882c1"

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
