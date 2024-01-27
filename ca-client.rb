class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "f2005b1699a781663cff33d5ceb4bf53284f2449cfebfecff6abe7d7e20dba8f"
  license ""
  version "0.9"

  depends_on "python3"
  depends_on "rsync"

  def install
    on_arm do
      bin.install 'bin/step_arm64' => "step"
    end
    on_intel do
      bin.install 'bin/step_amd64' => "step"
    end
    bin.install 'bin/bootstrap-step'
    bin.install 'bin/configure-ssh-client'
    bin.install 'bin/ssh-client-verify'
    system 'mkdir', '-p', "#{prefix}/share/ca-client"
    system 'cp', 'share/ca-url', "#{prefix}/share/ca-client/ca-url"
    system 'cp', 'share/root_ca.crt', "#{prefix}/share/ca-client/root_ca.crt"
    system 'cp', 'share/ssh_host_ca_key.pub', "#{prefix}/share/ca-client/ssh_host_ca_key.pub"
  end

  test do
    system "#{bin}/step", "--help"
  end
end
