cask "axon" do
  version "0.1.2"
  sha256 "b45ea9c4a5496808fdbe008e2f75dd9ebc48e0178f8f6eed1e60709e76ba1346"

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
