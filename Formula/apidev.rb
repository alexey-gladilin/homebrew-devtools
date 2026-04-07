class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.8"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.8/apidev-0.3.8-macos-arm64.tar.gz"
  sha256 "c8175edbaf731ae0386c735a5077df7916a5e0028f23f8975d079014da2553ff"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
