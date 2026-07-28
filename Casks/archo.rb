cask "archo" do
  version "0.1.11"
  sha256 "6c5a80f0abb72066d38d89e4a726f76908b35aa84c3c1b2494f61cd902fe8b50"

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
