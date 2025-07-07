class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.0.0/cpy-1.0.0.tar.gz"
  sha256 "c68c2b4954c1c172934c21b5c9582fcb5bfaf1e9314efa6a21d0bfa7019022ad"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
