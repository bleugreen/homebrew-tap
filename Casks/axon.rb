cask "axon" do
  version "0.1.0"
  sha256 "512db2308321329b4e7e134c85be51cd424eff7151e8daf332bb15d498ff27f7"

  url "https://github.com/bleugreen/axon/releases/download/v#{version}/Axon-#{version}.zip"
  name "Axon"
  desc "Local macOS accessibility service for agents"
  homepage "https://github.com/bleugreen/axon"

  depends_on macos: ">= :sonoma"

  app "Axon.app"
  binary "#{appdir}/Axon.app/Contents/Resources/bin/axon"

  zap trash: [
    "~/Library/Application Support/Axon",
    "~/Library/Logs/Axon",
  ]
end
