cask "review-radar" do
  version "1.3.0"
  sha256 "ed1cd9e75dcd5c5b09c8cadc6c4b79f0e4ee029c6dd1681731354d2c58db6de9"

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
