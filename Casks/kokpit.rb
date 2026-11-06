cask "kokpit" do
  version "0.1.11"
  sha256 "c46795d79a81b112755a29877861dcdfaeed7d4dd176a5526c1ad794ea00c127"

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
