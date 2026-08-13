cask "axon" do
  version "0.3.4"
  sha256 "dba154ad624646fac30a3be18b0fd961393f443022582ecb5d67b6f501a683f5"

  url "https://github.com/bleugreen/axon/releases/download/v#{version}/Axon-#{version}-macos-aarch64.zip"
  name "Axon"
  desc "Local macOS accessibility service for agents"
  homepage "https://github.com/bleugreen/axon"

  depends_on macos: ">= :sonoma"

  app "Axon-#{version}/Axon.app"
  app "Axon-#{version}/Axon Editor.app"
  binary "#{appdir}/Axon.app/Contents/Resources/bin/axon"

  zap trash: [
    "~/Library/Application Support/Axon",
    "~/Library/Logs/Axon",
  ]
end
