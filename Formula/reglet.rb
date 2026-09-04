class Reglet < Formula
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"
  version "0.5.7"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-arm64"
    sha256 "354a7150c0e6202a5ba542bba3ec31b6036b1b48ea3d743592aec3d4eb4f71e9"
  else
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-x64"
    sha256 "28f3e3717905de995caf733743ec49869f52df9d7f9c2232c3d172eea356ebb2"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "reglet-darwin-arm64" => "reglet"
    else
      bin.install "reglet-darwin-x64" => "reglet"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reglet --version")
  end
end
