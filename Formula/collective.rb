class Collective < Formula
  desc "Searchable directory of developer commands with TUI and flashcards"
  homepage "https://github.com/xooxoxxo/collective"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.1/collective-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "b62b46c456f62bc779c38625aa7451393787ff29317439805fd34f49441d1647"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.1/collective-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "c9f82a6582612e9043407b8ef7b971bfba9147be48441b05241ad40b2ef1d26e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.1/collective-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "880dbdfd3795897076657130483573fc79db1c584e09f294e7909b6c0ac63cf1"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.1/collective-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7fc40c022b0778494acc21bbf80941514d02443a55bfd126c009c2499a89b639"
    end
  end

  def install
    bin.install "collective"
  end

  test do
    assert_match "collective", shell_output("#{bin}/collective --help")
  end
end
