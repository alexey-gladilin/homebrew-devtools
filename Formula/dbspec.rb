class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.7"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.7/dbspec-0.7.7-macos-arm64"
  sha256 "a88395e220f4c273689f2cab47ca141c02b283bef0478da7075d874a4e995338"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
