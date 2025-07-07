class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.0.0/cpy-1.0.0.tar.gz"
  sha256 "9d48be3735808c174f057287452e7c12e877217f8fdbe8e291c8ce62b04f419a"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
