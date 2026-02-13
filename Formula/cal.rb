class Cal < Formula
  desc "Google Calendar CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.1/cal-darwin-arm64.tar.gz"
      sha256 "84e504d7108ccfc0a1a6ff57e47e098e43f79ab30509c2dd4d5fedaceffef787"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.1/cal-darwin-x64.tar.gz"
      sha256 "97b6d9b7fdc91997cca0131dd56bbf5404f3bda3587ae45a8a28751849409407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.1/cal-linux-arm64.tar.gz"
      sha256 "b5e9f90ff865ae939dd715bcda953f365200e54e0d714b8065fbdfeded507915"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/cal-v0.1.1/cal-linux-x64.tar.gz"
      sha256 "36e8b94d546ce9c8ffc2be14a72a3dcb8515ba17727b2fdacb4ef222712ae1cc"
    end
  end

  def install
    bin.install "cal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cal --version")
  end
end
