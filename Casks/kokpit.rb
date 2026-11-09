cask "kokpit" do
  version "0.1.23"
  sha256 "5dbe73a4c247af346210382c7839f59becee0ef082a5ac356e9bc2b17e930377"

  url "https://github.com/imonursahin/kokpit/releases/download/v#{version}/Kokpit-#{version}-arm64.dmg"
  name "Kokpit"
  desc "Desktop app for everything you do with Claude Code"
  homepage "https://github.com/imonursahin/kokpit"

  depends_on arch: :arm64

  app "Kokpit.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Kokpit.app"]
  end

  zap trash: [
    "~/Library/Application Support/Kokpit",
  ]
end
