cask "axon" do
  version "0.1.0"
  sha256 "3c5294b83e4ad311b68fd6ae8dd266f84ec5bdba2a58a9a14eb3cdb770b463a0"

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
