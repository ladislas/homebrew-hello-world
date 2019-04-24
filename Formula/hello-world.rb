class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/4.0.0.tar.gz"
  sha256 "bdfcc86a078851fce8ebc77cf24071b8e7760ba598fed7fd6651d6ddea0fe3d5"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "ed8df6011847dd50d91446030e83dc80ebad83457fa6f548dca05c781dcb4008" => :mojave
    sha256 "41025ed558b8ef24bea9f0c5acefe182a28df608180f36e4e733f674aecf6e53" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, World!\nVersion #{version}\n"
  end
end
