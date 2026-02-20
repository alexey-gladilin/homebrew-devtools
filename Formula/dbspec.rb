class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.17"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.17/dbspec-0.3.17-macos-arm64"
  sha256 "111a3b19bfb502fdc46d89feaa151eb804a12cac84a30a6f5e6d1afd1c409576"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
