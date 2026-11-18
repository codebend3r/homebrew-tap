cask "raven" do
  version "0.9.0"
  sha256 "7d27ad29c9c2831ad1d37291d3e6a12f982da9550ce658faa8d1b4a4378fa68c"

  url "https://github.com/codebend3r/maester/releases/download/v#{version}/raven-player-#{version}-arm64.dmg"
  name "Raven"
  desc "Local videos under raven's own controls"
  homepage "https://github.com/codebend3r/maester"

  # Only three-number tags carry the app; the vX.Y.Z.N build tags have no assets.
  livecheck do
    url :url
    regex(/^v?(\d+\.\d+\.\d+)$/i)
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Raven.app"

  zap trash: [
    "~/Library/Application Support/raven",
    "~/Library/Preferences/io.github.codebend3r.raven.plist",
    "~/Library/Saved Application State/io.github.codebend3r.raven.savedState",
  ]
end
