class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.6"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.6/dbspec-0.7.6-macos-arm64"
  sha256 "1cbd1663b7822ba3de90adee5393ce62b8eb83850e52e3aefc7c77102fd36ad8"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
