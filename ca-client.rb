class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client_0.4.tar"
  sha256 "487f2e4a90b40a0462ac75a1c68ad9e5558d9ddfd019850c3ea279e457e9f032"
  license ""
  version "0.4"

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
