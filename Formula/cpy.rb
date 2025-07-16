class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.1.1/cpy-1.1.1.tar.gz"
  sha256 "bb78d69b9812880e078494a66fb1efa7fd18a4ba3f67e4a4496d28c7e83f7585"
  license "MIT"

  depends_on "python@3.11"

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/source/p/pyperclip/pyperclip-1.8.2.tar.gz"
    sha256 "cb2cdd54e9ab02f4783bfa0f1c1d88fce95c63299fcf779de163be7d3a7b6f83"
  end
  
  resource "treelib" do
    url "https://files.pythonhosted.org/packages/46/7f/9335c1b48f5dc1dd8dd3d1e009ddf11ea55b9a24b9fc4d22d5cf7e547f2e/treelib-1.8.0.tar.gz"
    sha256 "ab8ac5b2679fc7c1f740a1720e317c7d1d9a64824c0933eaaae3c49dcbb89b8e"
  end
  
  resource "six" do
    url "https://files.pythonhosted.org/packages/02/75/9284b89f7be4ba769ae8e4e50a1f30f84cb22b3ae391d0cc0491e13f2b69/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c0f5c6ac6f6cbee8520f546f3cb274518"
  end

  def install
    virtualenv_install_with_resources
    bin.install_symlink libexec/"bin/cpy"
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
