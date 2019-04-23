class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/1.0.0.tar.gz"
  sha256 "1bdbafc6e059eca4421c2077c598cdf08a73f7115a4b6301ba612767260b5348"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "799de50a8f5e2e1f2a2bd86dbb33ac2b90abc91bdb289f457a3d4d162c1e69c1" => :mojave
    sha256 "ca5bffe5ecb1d44d77e848b348325bd01f997139c58040cc4f3a7e3a53883b39" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, World!\nVersion #{version}\n"
  end
end
