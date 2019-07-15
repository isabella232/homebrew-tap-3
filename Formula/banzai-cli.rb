# This file was generated by GoReleaser. DO NOT EDIT.
class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  version "0.0.20"

  if OS.mac?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.20/banzai_0.0.20_darwin_amd64.tar.gz"
    sha256 "9c3ce51e9103221ed25c71dc30fe8c609ba4cbb887df7c23a8dd7b446c778a30"
  elsif OS.linux?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.0.20/banzai_0.0.20_linux_amd64.tar.gz"
    sha256 "afd52738d94c03ca2e61e1ffa5e90cbf3f721d71690be492f27179815b0daafe"
  end
  
  depends_on "kubectl"

  def install
    bin.install "banzai"
  end

  test do
    system "#{bin}/banzai --version"
  end
end
