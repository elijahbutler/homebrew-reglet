cask "reglet" do
  version "0.1.1"

  on_arm do
    sha256 "d84f7e004989700612e8d8b8fc5554fb4c10ad4360ce452dffa97876d31b8605"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-arm64.app.zip"
  end

  on_intel do
    sha256 "38b0dba85d3fef456cad91f049dede5233289d5d05804345a439b816438e1e7b"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-x86_64.app.zip"
  end

  name "Reglet"
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"

  depends_on macos: :sonoma

  app "Reglet.app"
  binary "#{appdir}/Reglet.app/Contents/Resources/reglet"
end
