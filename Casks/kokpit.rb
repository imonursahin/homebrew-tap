cask "kokpit" do
  version "0.1.36"
  sha256 "4f62c569b9e4e6b9c2614c3f1575472c1ba53f811411834d02da5debd582158d"

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
