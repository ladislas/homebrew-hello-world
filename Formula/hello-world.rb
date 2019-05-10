class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/7.0.0.tar.gz"
  sha256 "c1bc5eb9621fd629cc6972dafe08cc9f345cd4f8755108ed5389b77024222078"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "04e98bdd4e6cb409f6c1ec450983abca0e8a67fcc040692b424bf51d773c6cb4" => :mojave
    sha256 "c12f3353db4871492fc587a6a4932fce1ed0bcb4e8d11315439f85afb77115a7" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, #{ENV["USER"]}!\nVersion #{version}\n"
  end
end
