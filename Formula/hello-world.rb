class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/1.0.0.tar.gz"
  sha256 "1bdbafc6e059eca4421c2077c598cdf08a73f7115a4b6301ba612767260b5348"

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, World!\nVersion #{version}\n"
  end
end
