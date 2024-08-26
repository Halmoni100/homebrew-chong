class ChongHelper < Formula
  desc "Helper scripts"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-helper.tar"
  sha256 "73cef08c9871bf6e5861679b784e111e1b51b90be4f37071b6d2293cf5d79b06"
  license ""
  version "0.3"



  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-helper"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/ipsed'

  end

end