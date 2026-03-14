class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.4"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.4/apidev-0.3.4-macos-arm64.tar.gz"
  sha256 "b90f09a4f532515104f51bd34f0d743e139f1b0fe95db8e4d3b35fed1bb3a0b9"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
