class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.0"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.0/dbspec-0.4.0-macos-arm64"
  sha256 "ad3e8e5fb7c271133580d7100363511c7c3a0d66884b222f7bc4b802f7c9cbed"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
