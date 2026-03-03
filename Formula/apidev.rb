class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.11"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.11/apidev-0.1.11-macos-arm64.tar.gz"
  sha256 "598cda76636d7b39f1a8a7476b4306ae144bd7a515cc86e382ef135fa705f44a"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
