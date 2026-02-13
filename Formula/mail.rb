class Mail < Formula
  desc "Email CLI for Gmail and Fastmail"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.1/mail-darwin-arm64.tar.gz"
      sha256 "029508c42b607a4ed7ad83ef1b8e236dd30de1ba861a94b00879dcc7fe8e23fa"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.1/mail-darwin-x64.tar.gz"
      sha256 "327afadfb5c433dc5cbdf6b5bcfc236323fa8d009c8073c5e0d8346232d6c33e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.1/mail-linux-arm64.tar.gz"
      sha256 "e0e441e51f69d886a4196475387a254e51e2eda779bb4ea73b9b16b0a329081d"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.1/mail-linux-x64.tar.gz"
      sha256 "ae4166159aa0882155fb01be868aa9ba891d5e9e3b0e10a277fa57831e9f70f4"
    end
  end

  def install
    bin.install "mail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail --version")
  end
end
