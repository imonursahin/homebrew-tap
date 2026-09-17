cask "archo" do
  version "0.2.2"
  sha256 "101a457c1918ceed669d8e87941e828c02697a81f6893ad25428fabe229e61d2"

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
