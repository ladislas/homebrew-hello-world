class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/7.0.0.tar.gz"
  sha256 "c1bc5eb9621fd629cc6972dafe08cc9f345cd4f8755108ed5389b77024222078"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "116be103f2c306693d001da2c3a51ff5676c205120f06e5e0acf9ed3d3994afd" => :mojave
    sha256 "472952da612e0d2bdd4dac222f4a61f20228d59e4397c8e9fada3f1162ba3e42" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, #{ENV["USER"]}!\nVersion #{version}\n"
  end
end
