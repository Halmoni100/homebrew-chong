class ChongCredentials < Formula
  desc "Personal credentials: CA/ssh certificates, gpg keys, pip conf"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-credentials.tar"
  sha256 "1b884981f7353f8479b72b595350bb3d4fffaf9477ca1d6e86a5925164df39e1"
  license ""
  version "0.3"

  depends_on "python3"


  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-credentials"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/install-chong-pip-repo'
    system 'cp', 'share/root_ca.crt', "#{prefix}/share/chong-credentials/root_ca.crt"
    system 'cp', 'share/ssh_host_ca_key.pub', "#{prefix}/share/chong-credentials/ssh_host_ca_key.pub"
    system 'cp', 'share/chong.gpg', "#{prefix}/share/chong-credentials/chong.gpg"
    system 'cp', 'share/chong.public.asc', "#{prefix}/share/chong-credentials/chong.public.asc"
    system 'cp', 'share/keyringrc.cfg', "#{prefix}/share/chong-credentials/keyringrc.cfg"
    system 'cp', 'share/pip.conf.template', "#{prefix}/share/chong-credentials/pip.conf.template"
    system 'cp', 'share/pypirc.template', "#{prefix}/share/chong-credentials/pypirc.template"

  end

end