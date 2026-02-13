class Todo < Formula
  desc "Task management CLI with provider support"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.0/todo-darwin-arm64.tar.gz"
      sha256 "0696f0de3e17d96815b661c7e1065bb3e225424c737e8871bb7b1be803ae41c6"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.0/todo-darwin-x64.tar.gz"
      sha256 "a7a9b59708a3272cd27bbbd7217517398a0e4aece32cbee320ad6c5d5f21a62b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.0/todo-linux-arm64.tar.gz"
      sha256 "83ad657462d3291691684a4e46ee8495b8e0cf9f2e5d5a03be030e7bf48bf84e"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/todo-v0.1.0/todo-linux-x64.tar.gz"
      sha256 "5318796fc1d09c624d1044d7d9fd7a06864ed90202dbede2713687ff7fb362c1"
    end
  end

  def install
    bin.install "todo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/todo --version")
  end
end
