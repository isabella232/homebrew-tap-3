# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformProviderK8s < Formula
  desc "Kubernetes Terraform provider with support for raw manifests"
  homepage "https://banzaicloud.com/"
  url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.1.0/terraform-provider-k8s_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "5463681f33b1e39b01329dbaa3bd57e1ce72b2fe148fd270d9dec1cf3f718f90"

  def install
    bin.install "terraform-provider-k8s"
  end
end
