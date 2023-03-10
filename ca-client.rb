class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "d5fc713b55faa46efbc8637aa18927b789e7357d5902cd6639eab0a3ff7b866b"
  license ""
  version "0.5"

  depends_on "python3"
  depends_on "rsync"

  def install
    on_arm do
      bin.install 'bin/step_arm64' => "step"
    end
    on_intel do
      bin.install 'bin/step_amd64' => "step"
    end
    system "./brew_install.sh", "#{prefix}"
  end

  test do
    system "$#{bin}/step", "--help"
  end
end
