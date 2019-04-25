class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/5.0.0.tar.gz"
  sha256 "b993de666a77401ec3f1a23f4215bc3b4c001abc82c0c35f912dcfedac938973"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "3aa8c348073474613a28dc0fdbfd9655ae3888e33a2cb7814a344226ebbe72af" => :mojave
    sha256 "43fae6bd0af492f75de5f704ab7ed8dbed5d97f1be8fc0c7813c7bab193e2a4a" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, World!\nVersion #{version}\n"
  end
end
