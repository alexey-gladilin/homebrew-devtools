class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.2"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.2/dbspec-0.7.2-macos-arm64"
  sha256 "d3ba9d1dd3f7a37668ebed2008226c8b79c08b7892e80ea65d79ad1afa4a5e33"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
