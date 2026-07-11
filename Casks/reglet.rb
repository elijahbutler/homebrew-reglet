cask "reglet" do
  version "0.1.6"

  on_arm do
    sha256 "cb54ac5b788ff6b86143cc87dea7d8aea900c05d29484fb39d158d7721110dc6"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-arm64.app.zip"
  end

  on_intel do
    sha256 "cc87ddd07b277f2ac7b105df90ba1be6800dbb11ba8a7c271ccc117f0f0c665f"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-x86_64.app.zip"
  end

  name "Reglet"
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"

  depends_on macos: :sonoma

  app "Reglet.app"
  binary "#{appdir}/Reglet.app/Contents/Resources/reglet"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/Reglet.app"
  end
end
