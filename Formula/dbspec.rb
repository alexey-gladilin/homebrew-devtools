class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.4"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.4/dbspec-0.4.4-macos-arm64"
  sha256 "ec0bc9ca55e8262adf0d45b38a0ef014f19852fe0072c3cfbc5ecbf88c13f86a"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
