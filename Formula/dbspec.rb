class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.19"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.19/dbspec-0.3.19-macos-arm64"
  sha256 "a6ff3fea8a7485fb93fc3fe6cad5a57506899cee36afaf987c5fd2ad2340f2b5"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
