class Minibuild < Formula
  desc "Parallel, incremental build system with zero dependencies"
  homepage "https://github.com/SebTardif/MiniBuildRust"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SebTardif/MiniBuildRust/releases/download/v0.3.1/minibuild-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "6772e69a0ece2480da9668197f313cf8b2e40c96de99ae154738c76e7a91cfc2"
    end

    on_intel do
      url "https://github.com/SebTardif/MiniBuildRust/releases/download/v0.3.1/minibuild-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "b38d9004ffa94070c824cd6bae8dbb0a926c98a93ab83bb491479d82b650368d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SebTardif/MiniBuildRust/releases/download/v0.3.1/minibuild-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc6131564e090b8c142f0a33c802b145665d642013647173e0fa7a7266248e56"
    end
  end

  def install
    bin.install "minibuild"
  end

  test do
    assert_match "--help", shell_output("#{bin}/minibuild --help")
  end
end
