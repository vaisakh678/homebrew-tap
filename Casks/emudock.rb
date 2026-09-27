cask "emudock" do
  version "0.1.0"
  sha256 "1d189f96f545522627b142ac4ba94e03ab86f39a4e270f2d9e8d2da8d38d1af6"

  url "https://github.com/vaisakh678/emudock/releases/download/v#{version}/EmuDock-#{version}.zip"
  name "EmuDock"
  desc "Create, launch and manage Android emulators without Android Studio"
  homepage "https://github.com/vaisakh678/emudock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "EmuDock.app"

  zap trash: [
    "~/Library/Application Support/EmuDock",
    "~/Library/Caches/com.cortexlumora.emudock",
    "~/Library/Logs/EmuDock",
    "~/Library/Preferences/com.cortexlumora.emudock.plist",
  ]
end
