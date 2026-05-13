cask "axon" do
  version "0.1.0"
  sha256 "070481a7e9077872926b1bbd0f5f67702348e87c33c8bb54de8f84acd1cd7a90"

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
