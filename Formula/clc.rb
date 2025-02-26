class Clc < Formula
    desc "Command-line calculator"
    homepage "https://github.com/Ameb8/clcSolve"
    url "https://github.com/Ameb8/clcSolve/releases/download/v1.0.0/clCalc.jar"
    sha256 "42c1af7bc74a95c9d8a8aa54107179438d7e46a443cfb7a4d1d69a348f38a679"
  
    def install
        libexec.install "clCalc.jar"
        bin.write_jar_script libexec/"clCalc.jar", "clc"
    end
  
    test do
      system "#{bin}/clc", "--help"
    end
  end