class Reglet < Formula
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"
  version "0.5.4"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-arm64"
    sha256 "1db749bec3976136e309346b139e9b681c0b2497ec3169489e467217ea99904b"
  else
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-x64"
    sha256 "b35564c72ba4b61e060918f4463a393e4f6dde867c1a98b5c2cd878c12b2239b"
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
