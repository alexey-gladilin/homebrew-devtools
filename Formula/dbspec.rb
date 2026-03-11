class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.8"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.8/dbspec-0.4.8-macos-arm64"
  sha256 "86c1892f2b80a15724481b6f0cfb29562cbce5b90128faa2c916740f7c1562e1"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
