class Mail < Formula
  desc "Email CLI for Gmail and Fastmail"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.0/mail-darwin-arm64.tar.gz"
      sha256 "de5baf2eb0749374797834a8ff9d45c7ae887c719415849d69497e3b2024ba92"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.0/mail-darwin-x64.tar.gz"
      sha256 "3970ca5c2bf17ea3b8b2878c63fecc79ce52621b8ce737237894e4430a35b48d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.0/mail-linux-arm64.tar.gz"
      sha256 "8a6fd055de0f31967988eca0ebee60a0f6f50c205f1edcac4545bd6a500e1986"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.2.0/mail-linux-x64.tar.gz"
      sha256 "dc97f72483e8817207ff1dbf2f0df80f3b69f5feae2cea6f33a2db90c8e3bf6c"
    end
  end

  def install
    bin.install "mail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail --version")
  end
end
