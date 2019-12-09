# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.2.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/kurun/releases/download/0.2.5/kurun-darwin-amd64.tar.gz"
    sha256 "de3ebd57116ded15ac6781d4e1510b888f57fd574106a1eb39f518a7297b2aab"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/kurun/releases/download/0.2.5/kurun-linux-amd64.tar.gz"
      sha256 "bd984db39cc3280ea76320192dd896cccc9ad5de4ce2e42adb2a670501d1c01d"
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
