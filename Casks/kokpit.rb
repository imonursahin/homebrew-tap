cask "kokpit" do
  version "0.1.35"
  sha256 "69d63a6bf4af35502823a10aa857acee76d58398eea84791d1c9e73e5b1f3435"

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
