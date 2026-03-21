class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.7"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.7/apidev-0.3.7-macos-arm64.tar.gz"
  sha256 "27fecdc98e6980df877d6acf9a9bff6620e95d0faf88ff9176d47893cb12a324"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
