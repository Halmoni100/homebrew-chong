class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "ad95a3369f8f13e8cddfd4d098d44ef96314a60d9294eae5db3b59b5690d2b87"
  license ""
  version "0.12"

  depends_on "python3"
  depends_on "rsync"
  depends_on "pwgen"

  def install
    on_arm do
      bin.install 'bin/step_arm64' => "step"
    end
    on_intel do
      bin.install 'bin/step_amd64' => "step"
    end
    bin.install 'bin/bootstrap-ca'
    bin.install 'bin/configure-ssh-client'
    bin.install 'bin/ssh-client-verify'
    bin.install 'bin/create-kms-key'
    bin.install 'bin/request-provisioner'
    bin.install 'bin/create-certificate'
    system 'mkdir', '-p', "#{prefix}/share/ca-client"
    system 'cp', 'share/ca-url', "#{prefix}/share/ca-client/ca-url"
    system 'cp', 'share/root_ca.crt', "#{prefix}/share/ca-client/root_ca.crt"
    system 'cp', 'share/ssh_host_ca_key.pub', "#{prefix}/share/ca-client/ssh_host_ca_key.pub"
    system 'cp', 'share/create-jwks.sh', "#{prefix}/share/ca-client/create-jwks.sh"
    system 'cp', 'share/create-signature.sh', "#{prefix}/share/ca-client/create-signature.sh"
  end

  test do
    system "#{bin}/step", "--help"
  end
end
