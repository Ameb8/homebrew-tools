class Cpy < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for copying dynamic content to clipboard"
  homepage "https://github.com/Ameb8/cpy"
  url "https://github.com/Ameb8/cpy/releases/download/v1.0.0/cpy-1.0.0.tar.gz"
  sha256 "4559f9714e93bea021328af127eb454ee5a472233c523f8ca2b5d4bd0b265055"
  license "MIT"

  depends_on "python@3.11"

    resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/ea/8c/8c1263c1e80b3d786b9ebc2219c6f0d2ff70b3b8b1d812f4bbd285e09121/pyperclip-1.9.0.tar.gz"
    sha256 "89e170badc8c040cd2b833cb3a47f5a7179e45d011bba5e41f8b2fcd3328e48e"
  end

  resource "treelib" do
    url "https://files.pythonhosted.org/packages/19/0f/8d40617667e7d325d33a3734fa56e27a2d8c30a3ea17625e6111cfc947aa/treelib-1.8.0.tar.gz"
    sha256 "18339aa255965bba45b71e2b11e06f740fc7f2a510e4faef159e4c839bd4be7f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cpy", "--help"
  end
end
