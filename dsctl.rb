# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "github_private_repository_release_download_strategy"
class Dsctl < Formula
  desc ""
  homepage ""
  version "0.4.2"

  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.4.2/dsctl_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fd20ba694b2da523ada4176a22a62d1629e88edace2158933fdc84587e7bc752"

      def install
        bin.install "dsctl"
        bash_completion.install "completions/dsctl.bash" => "dsctl"
        fish_completion.install "completions/dsctl.fish"
        zsh_completion.install "completions/dsctl.zsh" => "_dsctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.4.2/dsctl_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9ffd49babca55597702ab930da4f772b36f9d9abcc4b54c994f6382a763a29fc"

      def install
        bin.install "dsctl"
        bash_completion.install "completions/dsctl.bash" => "dsctl"
        fish_completion.install "completions/dsctl.fish"
        zsh_completion.install "completions/dsctl.zsh" => "_dsctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.4.2/dsctl_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e4bf74df1c4873365fbfcdefdf03263c425b87bee29956f74cf5931a62a6e755"

      def install
        bin.install "dsctl"
        bash_completion.install "completions/dsctl.bash" => "dsctl"
        fish_completion.install "completions/dsctl.fish"
        zsh_completion.install "completions/dsctl.zsh" => "_dsctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/digitalservicebund/dsctl/releases/download/v0.4.2/dsctl_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ed22562b234af9f5a37937ac19d42beca33d96b91c03f8ef0dd01585cf5493db"

      def install
        bin.install "dsctl"
        bash_completion.install "completions/dsctl.bash" => "dsctl"
        fish_completion.install "completions/dsctl.fish"
        zsh_completion.install "completions/dsctl.zsh" => "_dsctl"
      end
    end
  end
end
