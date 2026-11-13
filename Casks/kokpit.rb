cask "kokpit" do
  version "0.1.42"
  sha256 "799ed882af88b3564dfd656814bb1d19cc7e8dc43d0f36ba65dc1eef4027a9d9"

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
