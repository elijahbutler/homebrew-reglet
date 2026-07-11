cask "reglet" do
  version "0.1.2"

  on_arm do
    sha256 "1e8c8e0d4ac5d097c0b0bfd4591b3ef49edc60d2742f4f9ac13eea06239b84ce"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-arm64.app.zip"
  end

  on_intel do
    sha256 "ccc1c8a47114cf1b6c0f5961d3e9ceb9fa1d5e94e4f28304360ff9ab0771e0b9"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-x86_64.app.zip"
  end

  name "Reglet"
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"

  depends_on macos: :sonoma
  no_quarantine

  app "Reglet.app"
  binary "#{appdir}/Reglet.app/Contents/Resources/reglet"
end
