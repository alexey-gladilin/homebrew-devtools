class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.23"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.23/dbspec-0.3.23-macos-arm64"
  sha256 "88477761141a1b34a3689adc74b97703541827383564f056646631e9143c21c3"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
