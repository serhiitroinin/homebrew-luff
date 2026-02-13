class Mail < Formula
  desc "Email CLI for Gmail and Fastmail"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.2/mail-darwin-arm64.tar.gz"
      sha256 "22edceaba551a23a5665c7d322a3b96b207584f9b71a93f6884f2f88c9d6bfa3"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.2/mail-darwin-x64.tar.gz"
      sha256 "61f9b48c9192f0c18ea552b48a32a79f3b83ff2d2b8474410d5bdd53e62b8a74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.2/mail-linux-arm64.tar.gz"
      sha256 "d06ce922053a3a0db3a85d82e08e3f5d89cf6489ffb97f06c4580b5a529a7891"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.2/mail-linux-x64.tar.gz"
      sha256 "0f6e096c775b5ce7d49d430f64a0c694df55dd9f391f7db39c6d6d3ca6020fe6"
    end
  end

  def install
    bin.install "mail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail --version")
  end
end
