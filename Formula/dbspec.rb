class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.9"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.9/dbspec-0.3.9-macos-arm64"
  sha256 "f7da4b81db9a65ea9273ce6e449afe18c2f0c081ed29f93def63774934580165"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
