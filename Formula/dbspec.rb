class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.7"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.7/dbspec-0.4.7-macos-arm64"
  sha256 "90b1387e3dbb1997aa71bfd3e5c2d3dff91f251c17ebcf729410a294062b8dd8"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
