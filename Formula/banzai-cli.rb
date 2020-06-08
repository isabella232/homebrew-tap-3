# This file was generated by GoReleaser. DO NOT EDIT.
class BanzaiCli < Formula
  desc "Command-line interface for Banzai Cloud Pipeline platform"
  homepage "https://banzaicloud.com/"
  version "0.11.1"

  if OS.mac?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.11.1/banzai_0.11.1_darwin_amd64.tar.gz"
    sha256 "cfed19785396676fce5e938390533cb5602a578b99659d96eda9ecee78cf83c2"
  elsif OS.linux?
    url "https://github.com/banzaicloud/banzai-cli/releases/download/0.11.1/banzai_0.11.1_linux_amd64.tar.gz"
    sha256 "b46f24367ce32f4ffb9717c8d3de7d93a85b8242e368bc021227b31fc2e6df6d"
  end
  
  depends_on "kubectl"

  def install
    bin.install "banzai"
    
    # Install bash completion
    output = Utils.popen_read("#{bin}/banzai completion bash")
    (bash_completion/"banzai").write output
    
    # Install zsh completion
    output = Utils.popen_read("#{bin}/banzai completion zsh")
    (zsh_completion/"_banzai").write output
  end

  test do
    system "#{bin}/banzai --version"
  end
end
