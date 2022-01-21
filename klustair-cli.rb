# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KlustairCli < Formula
  desc "Scan all images in your Kubernetes cluster with Trivy and check your configuration with Kubeaudit"
  homepage "https://github.com/klustair/klustair-cli"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.0.1/klustair-cli_0.0.1_Darwin_arm64.tar.gz"
      sha256 "05c7554a84fb9c41c045b4e7842376e509b372d8bdd984ad877238ec6077d3b7"

      def install
        bin.install "klustair-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.0.1/klustair-cli_0.0.1_Darwin_x86_64.tar.gz"
      sha256 "f221f2005fd11993efcdb0680c2d7504424192e1c7047bb958246f61821b6e98"

      def install
        bin.install "klustair-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.0.1/klustair-cli_0.0.1_Linux_x86_64.tar.gz"
      sha256 "151bfa25168c8f790e84c25d4e39a3775743cbc7023b738b35a733cdbe8f1569"

      def install
        bin.install "klustair-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.0.1/klustair-cli_0.0.1_Linux_arm64.tar.gz"
      sha256 "3894e9f6b060e17285b08dc099c1899c7e0b61f0bd84c9fe5b59c89b8f97e276"

      def install
        bin.install "klustair-cli"
      end
    end
  end

  test do
    system "#{bin}/klustair-cli", "--version"
  end
end
