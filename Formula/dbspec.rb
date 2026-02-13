class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.1.0"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.5/dbspec-0.1.0-macos-arm64"
  sha256 "37288c1216bb3e0909632242fddc4c0e80682437eb432090a40318d6d2401d46"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
