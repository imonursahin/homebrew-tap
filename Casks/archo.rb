cask "archo" do
  version "0.1.2"
  sha256 "7985886cd8d14b6a5d9bc52deb488d24cf1fdc59c5f76071e9c271981451af28"

  url "https://github.com/imonursahin/archo/releases/download/v#{version}/Archo-#{version}-arm64.dmg"
  name "Archo"
  desc "Desktop app to create and manage Claude Code assistants"
  homepage "https://github.com/imonursahin/archo"

  depends_on arch: :arm64

  app "Archo.app"

  zap trash: [
    "~/Library/Application Support/agent-studio",
  ]
end
