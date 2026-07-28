class Collective < Formula
  desc "Searchable directory of developer commands with TUI and flashcards"
  homepage "https://github.com/xooxoxxo/collective"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.0/collective-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "bcdd82352f546a580a9c371bacd2760878963111b2a1a03250d09b07a56f652f"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.0/collective-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "80289fd098d7e23a26c4e2d5077ac5d232c670edcc7f4c8082b87b0114c6ec96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.0/collective-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0137253b93c3a9787b634a252d2858e96d74f9e78aef08f4a4b8b73e0716b8a0"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.3.0/collective-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14bfdde20e1b2dac91c2e7c4ae13bfd578372af93ff2f366cd27ab156d309464"
    end
  end

  def install
    bin.install "collective"
  end

  test do
    assert_match "collective", shell_output("#{bin}/collective --help")
  end
end
