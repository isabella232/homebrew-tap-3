# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCli < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.0.1"

  if OS.mac?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.0.1/backyards_1.0.1_darwin_amd64.tar.gz"
    sha256 "066c619530f4edc83cb311458329eb74b0a2adb9fdbe9d87969293e5a321301a"
  elsif OS.linux?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.0.1/backyards_1.0.1_linux_amd64.tar.gz"
    sha256 "baa981fcc62c121b9cd95258afc7a91eee6ca315945cc0357c1c5d5d6dc8835f"
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
