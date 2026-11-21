# Homebrew cask for Tuyi (图译). It lives in the tap erict16/homebrew-tap:
#   brew install --cask erict16/tap/tuyi
cask "tuyi" do
  version "0.1.15"
  sha256 "af2cd2aced5e0d443758426e517ef3791da315e411189dc3e150c90db6376612"

  url "https://github.com/erict16/tuyi/releases/download/v#{version}/Tuyi_v#{version}_macOS_arm64.dmg"
  name "Tuyi"
  name "图译"
  desc "DWG/DXF file translator: translate the text in CAD drawings into any language"
  homepage "https://erict16.github.io/tuyi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Tuyi.app"
  binary "#{appdir}/Tuyi.app/Contents/MacOS/tuyi-cli", target: "tuyi"

  zap trash: [
    "~/.tuyi_config.json",
    "~/.tuyi_dropped_files",
    "~/.tuyi_language_assets",
    "~/.tuyi_oda_cache",
    "~/.tuyi_queue.json",
  ]

  caveats <<~EOS
    DWG files also need the free ODA File Converter:
      https://www.opendesign.com/guestfiles/oda_file_converter
    DXF files work without it.

    Tuyi is not notarized yet. The first time, right-click Tuyi in
    Applications and choose Open.
  EOS
end
