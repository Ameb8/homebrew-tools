class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.1.1/cpy-1.1.1.tar.gz"
  sha256 "bb78d69b9812880e078494a66fb1efa7fd18a4ba3f67e4a4496d28c7e83f7585"
  license "MIT"

  depends_on "python@3.11"

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
    sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
  end
  
  resource "treelib" do
    url "https://files.pythonhosted.org/packages/7a/31/145bdbee73d7ee4ac4e879c37faa196a32208b288ca4f308c1ad8db3f010/treelib-1.8.0.tar.gz"
    sha256 "e1be2c6b66ffbfae85079fc4c76fb4909946d01d915ee29ff6795de53aed5d55"
  end
  
  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  def install
    virtualenv_install_with_resources
    bin.install_symlink libexec/"bin/cpy"
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
