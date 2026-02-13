class Cal < Formula
  desc "Google Calendar CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.0/cal-darwin-arm64.tar.gz"
      sha256 "a4ae56c47d6e7fac1d7ee615c4ad21451c3860538647fd3ff5eb82909c4f740a"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.0/cal-darwin-x64.tar.gz"
      sha256 "bcc94d87b88be74ab772057d609d984c0d8325db28a651b91b16a9de8674c006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.0/cal-linux-arm64.tar.gz"
      sha256 "39a397f66937c2e3cea540f029748a9434a4f92655a071214b20489dc29378bd"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.0/cal-linux-x64.tar.gz"
      sha256 "50d99b8b877cdcd53d70e73f66941066dc3acc6370a1a396750d664b6741321e"
    end
  end

  def install
    bin.install "cal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cal --version")
  end
end
