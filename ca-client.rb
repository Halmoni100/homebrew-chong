class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "155f7b7c69820eb0eb9dac2e16cab30df6430c53992302ccda6d413f25dd2a23"
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
