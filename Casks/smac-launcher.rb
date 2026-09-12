cask "smac-launcher" do
  version "1.1.0"
  sha256 "7329b7f28801f5e92f7a93455881215faabbdaaa8a1d435ddbe77e91e838cc93"

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
