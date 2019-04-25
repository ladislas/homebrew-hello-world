class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/4.0.0.tar.gz"
  sha256 "bdfcc86a078851fce8ebc77cf24071b8e7760ba598fed7fd6651d6ddea0fe3d5"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "cf66350c40cdef5180cc221a62cd9d55afd71dbaa4ae984da21e6d56b4cde3ca" => :mojave
    sha256 "3d9efe9fc980e8f55b64280a024ec1da5904bb2827a920ac1a452fb0635a124f" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, World!\nVersion #{version}\n"
  end
end
