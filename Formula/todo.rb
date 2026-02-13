class Todo < Formula
  desc "Task management CLI with provider support"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.1/todo-darwin-arm64.tar.gz"
      sha256 "d05955806b2986c60b6fc5826d9952cdc93639f23e6eef8bda2d82acbb4441ac"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.1/todo-darwin-x64.tar.gz"
      sha256 "dc2351614c39c102bd3ff790ad175e3842c041a9321f2cd03111ffa757d04f5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.1/todo-linux-arm64.tar.gz"
      sha256 "514d55ea6863ea43e859693e5637336565160d3eadf9882825b0dbc47f71ca47"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.1/todo-linux-x64.tar.gz"
      sha256 "2720b73a33b5171fdd82c2de8736ff11a5dc1551bbc8b44ce73f5dbdc2105a58"
    end
  end

  def install
    bin.install "todo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/todo --version")
  end
end
