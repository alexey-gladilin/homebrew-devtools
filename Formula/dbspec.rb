class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.8"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.8/dbspec-0.7.8-macos-arm64"
  sha256 "984eff1c8e32241d655ed5de4bf3bf3f474998513aba2cb23b0813667be987b6"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
