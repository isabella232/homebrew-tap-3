# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/kurun/releases/download/0.2.2/kurun_0.2.2_darwin_amd64.tar.gz"
    sha256 "7c80bbd76edfc37419d5e073785b0d27b8846fd5f29e8d2f438b8826fea8f53e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/kurun/releases/download/0.2.2/kurun_0.2.2_linux_amd64.tar.gz"
      sha256 "b76ef96027af894de7ea3c8c6a8bd8077041d0e5025040dbdfd05373be359331"
    end
  end
  
  depends_on "inlets"

  def install
    bin.install "kurun"
  end

  test do
    system "#{bin}/kurun --version"
  end
end
