# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "github_private_repository_release_download_strategy"
class Dsctl < Formula
  desc ""
  homepage ""
  version "0.3.4"

  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.3.4/dsctl_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "31b9e7a19f47c73aee1e437e53f29ec25f4d1c2468dab211d55c3f5d3bc1d659"

      def install
        bin.install "dsctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.3.4/dsctl_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ff3af96953f74261b793e1dba90a44a56d40b66f879ac60fe45150b2df256e63"

      def install
        bin.install "dsctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.3.4/dsctl_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4854dba020135ee163d5532dc4a25293dde6ce03949686bbc86c83212be58ba8"

      def install
        bin.install "dsctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.3.4/dsctl_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "48713ebf812c154460ea9f7880784167a65e2177f7136ea42a093b0032cf799a"

      def install
        bin.install "dsctl"
      end
    end
  end
end
