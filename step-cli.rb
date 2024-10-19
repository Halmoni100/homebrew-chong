class StepCli < Formula
  desc "Step CLI binary"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/step-cli.tar"
  sha256 "8aa3db0f1f26bbc99bb62a329f45eb80535a83d8b9842e888dc89f17756efba8"
  license ""
  version "27.5"

  depends_on "bash-completion@2"


  def install
    system 'mkdir', '-p', "#{prefix}/share/step-cli"
    on_arm do
      bin.install 'bin/step-arm' => "step"

    end
    on_intel do
      bin.install 'bin/step-amd' => "step"

    end

  end

end