class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/8.0.0.tar.gz"
  sha256 "0caa1306c4a6c629aed2b66080375c24fc3b820fd803f9e327ae140a30da336d"

  bottle do
    root_url "https://dl.bintray.com/ladislas/bottles-hello-world"
    cellar :any_skip_relocation
    sha256 "e2238bec4f28d370fe0a597e7b12278cc3a985baf3be14aae6ede1491b25957e" => :mojave
    sha256 "74115e17ea922d8f33996cb8e7217465e2642a10677df8bef22ee2474f891da1" => :high_sierra
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, #{ENV["USER"]}!\nVersion #{version}\n"
  end
end
