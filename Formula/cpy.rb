class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.1.1/cpy-1.1.1.tar.gz"
  sha256 "bb78d69b9812880e078494a66fb1efa7fd18a4ba3f67e4a4496d28c7e83f7585"
  license "MIT"

  depends_on "python@3.11"

  resource "pyperclip" do
    
    url "https://github.com/Ameb8/cpy/releases/download/v1.1.1/cpy-1.1.1.tar.gz"
    sha256 "bb78d69b9812880e078494a66fb1efa7fd18a4ba3f67e4a4496d28c7e83f7585"
  end

  resource "treelib" do
    url "https://github.com/Ameb8/cpy/releases/download/v1.1.1/cpy-1.1.1.tar.gz"
    sha256 "bb78d69b9812880e078494a66fb1efa7fd18a4ba3f67e4a4496d28c7e83f7585"
  end

  resource "six" do
  url "https://github.com/Ameb8/cpy/releases/download/v1.1.1/cpy-1.1.1.tar.gz"
  sha256 "bb78d69b9812880e078494a66fb1efa7fd18a4ba3f67e4a4496d28c7e83f7585"
end


  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
