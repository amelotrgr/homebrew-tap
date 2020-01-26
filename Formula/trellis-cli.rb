# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "0.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roots/trellis-cli/releases/download/v0.7.0/trellis_0.7.0_Darwin_x86_64.tar.gz"
    sha256 "147e8cc5bd15676a3ddb902f4e026e1666f6819f3e3192975c14c55d1cca4fc0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v0.7.0/trellis_0.7.0_Linux_x86_64.tar.gz"
      sha256 "c1bc4100d8e291bf1a47e2f7339e76582f7e3fb45c2987c718a8c842a36c4752"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
