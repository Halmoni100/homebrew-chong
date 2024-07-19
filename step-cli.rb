class StepCli < Formula
  desc "Step CLI binary"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/step-cli.tar"
  sha256 "c36cda460dc3f9beb36b21fcf404959448e372a4d4c23474b700dafe02e85cc4"
  license ""
  version "27.2"

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