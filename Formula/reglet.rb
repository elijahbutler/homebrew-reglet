class Reglet < Formula
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"
  version "0.1.3"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-arm64"
    sha256 "2c8a4df12597c50747f6c379b96e07c05dce9fef3e21104a76f68774a642de0f"
  else
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-x64"
    sha256 "dc84e07f80b6360c1496b4749dcd2dc5a03e2811e41f6cf499504041abe5e88e"
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
