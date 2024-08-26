class ChongHelper < Formula
  desc "Helper scripts"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-helper.tar"
  sha256 "17c4935d378bd5796458b0257132c21445528365cca0bac00efdbeedc8531599"
  license ""
  version "0.2"



  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-helper"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/ipsed'

  end

end