cask "archo" do
  version "0.1.16"
  sha256 "3eea377907b44ff124fb7d7786df78dc441065b24142d4c0cb29dca00e5d73d1"

  url "https://github.com/imonursahin/archo/releases/download/v#{version}/Archo-#{version}-arm64.dmg"
  name "Archo"
  desc "Desktop app to create and manage Claude Code assistants"
  homepage "https://github.com/imonursahin/archo"

  depends_on arch: :arm64

  app "Archo.app"

  # Archo is unsigned; strip the quarantine flag after install so Gatekeeper
  # doesn't block the first launch (no Terminal step needed by the user).
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Archo.app"]
  end

  zap trash: [
    "~/Library/Application Support/agent-studio",
  ]
end
