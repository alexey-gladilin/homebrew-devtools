class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/devspec"
  version "0.3.7"
  url "https://github.com/alexey-gladilin/devspec/releases/download/v0.3.7/dbspec-0.3.7-macos-arm64"
  sha256 "f968dee44f29493464b63e9ad1c7e54ff1d7fcb47e8932860a450e263b18f1f5"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
