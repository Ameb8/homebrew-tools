class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.0.0/cpy-1.0.0.tar.gz"
  sha256 "4559f9714e93bea021328af127eb454ee5a472233c523f8ca2b5d4bd0b265055"
  license "MIT"

  depends_on "python@3.11"

  resource "pyperclip" do
    
    url "https://files.pythonhosted.org/packages/source/p/pyperclip/pyperclip-1.9.0.tar.gz"
    sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
  end

  resource "treelib" do
    url "https://files.pythonhosted.org/packages/source/t/treelib/treelib-1.8.0.tar.gz"
    sha256 "e1be2c6b66ffbfae85079fc4c76fb4909946d01d915ee29ff6795de53aed5d55"
  end

  resource "six" do
  url "https://files.pythonhosted.org/packages/source/s/six/six-1.16.0.tar.gz"
  sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
end


  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
