class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.2"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.2/apidev-0.3.2-macos-arm64.tar.gz"
  sha256 "773b1e9d9b901530f4eb9354ec223c51d637c87aaf3598a887958e7c12ed39f4"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
