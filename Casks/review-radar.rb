cask "review-radar" do
  version "1.2.0"
  sha256 "420270207844f3958ce0925827e0bd9e873a8d6c43d26ec5b820675438dcf802"

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
