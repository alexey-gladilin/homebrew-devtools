class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.18"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.18/dbspec-0.3.18-macos-arm64"
  sha256 "243b11d8c6b06fc1ad9d5e249fd82e3c77f2423f69a7d5c08bcb69d59ce05aa3"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
