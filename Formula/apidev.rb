class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.14"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.14/apidev-0.1.14-macos-arm64.tar.gz"
  sha256 "0283cddd8562306ce39f120159bbce483aa2cd95ef9fbecc1838e9e014007d38"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
