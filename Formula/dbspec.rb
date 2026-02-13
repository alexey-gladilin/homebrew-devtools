class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.7"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.7/dbspec-0.3.7-macos-arm64"
  sha256 "9b76026289dde30203a403e383dc58e718bcb549f7cd4f1f4e3798a6c0be2f2d"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
