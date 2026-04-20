class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.11"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.11/apidev-0.3.11-macos-arm64.tar.gz"
  sha256 "602277efbe8adaea1c26f51d3fb2c51872216a9c76f945567956a530298ba52a"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
