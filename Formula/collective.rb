class Collective < Formula
  desc "Searchable directory of developer commands with TUI and flashcards"
  homepage "https://github.com/xooxoxxo/collective"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.2.0/collective-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a5880d360db574bf43c9dc42562700e5d3a31d6838757ed05d8895ab0779535d"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.2.0/collective-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "19a48733aad269af4e4eb4c10790720284a028a5c4ce46064f0a0c3a62adad23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.2.0/collective-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7276b34a2800747d7fbd8dbbe904c278ad4a0ba8be77acfd3462473c2b569e2a"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.2.0/collective-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c91bccf7d4c425b6cbe75d4cdd5e7149ee3c2e4bf2b511ed898b6d8eb8bc8f1"
    end
  end

  def install
    bin.install "collective"
  end

  test do
    assert_match "collective", shell_output("#{bin}/collective --help")
  end
end
