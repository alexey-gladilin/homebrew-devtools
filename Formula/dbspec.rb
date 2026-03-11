class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.5"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.5/dbspec-0.4.5-macos-arm64"
  sha256 "514f72abf99c7b932084c303306bf3ffcd975ce85d6664fa652d573e7b0fafc8"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
