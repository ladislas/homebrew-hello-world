class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/2.0.0.tar.gz"
  sha256 "73b144b542e5abd12a99c33acd38e415b6e8f4bc91d6d4fe3efe705b7abc681a"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "40b1477bcd579539df285a4211400fe3e530ee5c95970c55e687dcfd08200d12" => :mojave
    sha256 "10830ef0b7f07e974e784a4fac304adf16015998d6b264139b80bfaaf5299425" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, World!\nVersion #{version}\n"
  end
end
