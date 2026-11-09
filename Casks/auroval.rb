# Generated from packaging/homebrew/auroval.rb.in in auroval/remote
# by packaging/homebrew/casks.sh. Edit the template there, not this file.
cask "auroval" do
  version "0.1.0-alpha.7"

  on_linux do
    on_intel do
      sha256 "c4d43c547b27e409ca9fc1a200d8ec1a1fac2742bfe1cdce2aeadb881eaf21ab"
      url "https://github.com/auroval/remote/releases/download/v#{version}/auroval-#{version}-x86_64-linux.tar.gz"
    end
  end

  name "Auroval"
  desc "Use your Mac from Linux (Wayland): the client"
  homepage "https://github.com/auroval/remote"

  livecheck do
    skip "Filled in by casks.sh on release."
  end

  binary "auroval-#{version}-x86_64-linux/auroval"

  caveats <<~EOS
    Alpha. Built on current Arch Linux and linked against its SDL3 and FFmpeg
    libraries, so for now it runs on an up-to-date Arch or CachyOS
    (pacman -S sdl3 ffmpeg). Hardware decoding uses CUDA or VA-API when there.

    Pair with your Mac once (on the Mac: sudo auroval-agent pair):
      auroval pair
    then connect:
      auroval
  EOS
end
