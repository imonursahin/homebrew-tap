cask "review-radar" do
  version "1.0.0"
  sha256 "b06a413a7414976a6300e4339d503c19001c7c0e9c59ec8b49fe01066d514575"

  url "https://github.com/imonursahin/review-radar/releases/download/v#{version}/ReviewRadar-#{version}-arm64.dmg"
  name "Review Radar"
  desc "Menu bar app that shows the pull requests waiting on your review"
  homepage "https://github.com/imonursahin/review-radar"

  depends_on arch: :arm64

  app "Review Radar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Review Radar.app"]
  end

  zap trash: [
    "~/Library/Application Support/Review Radar",
  ]
end
