class Minibuild < Formula
  desc "Parallel, incremental build system with zero dependencies"
  homepage "https://github.com/SebTardif/MiniBuildRust"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SebTardif/MiniBuildRust/releases/download/v0.3.0/minibuild-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b029f11c74f5838b708dadb6318e30240100f199917fdf5a91b2ce79f2c2fef1"
    end

    on_intel do
      url "https://github.com/SebTardif/MiniBuildRust/releases/download/v0.3.0/minibuild-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3bf6ce7d0972712baaccaa3bb69da3358d6a9683c9ec9b2fb263bab8b08a239c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SebTardif/MiniBuildRust/releases/download/v0.3.0/minibuild-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d841085004f32578fec08326c7677c0576c11101f9f87775b463b6946aeb775c"
    end
  end

  def install
    bin.install "minibuild"
  end

  test do
    assert_match "--help", shell_output("#{bin}/minibuild --help")
  end
end
