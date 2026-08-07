cask "axon" do
  version "0.2.0"
  sha256 "5902943bc97748e65b3d3429bd01c83d34707c082c42d0470e7b76c6246d1506"

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
