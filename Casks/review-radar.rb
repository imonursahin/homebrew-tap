cask "review-radar" do
  version "1.1.0"
  sha256 "0ddc4ba42a303e274f03614e9d3c00d33060a79ebebf73b114908acab66e4b1b"

  url "https://github.com/imonursahin/review-radar/releases/download/v#{version}/ReviewRadar-#{version}-arm64.dmg"
  name "Review Radar"
  desc "Menu bar app that shows the pull requests waiting on your review"
  homepage "https://github.com/imonursahin/review-radar"

  depends_on arch: :arm64
  depends_on :macos

  app "Review Radar.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Review Radar.app"]
  end

  zap trash: "~/Library/Application Support/Review Radar"
end
