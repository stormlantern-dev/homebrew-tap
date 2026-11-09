# Generated from packaging/homebrew/auroval.rb.in in auroval/remote
# by packaging/homebrew/casks.sh. Edit the template there, not this file.
cask "auroval" do
  version "0.1.0-alpha.8"

  on_linux do
    on_intel do
      sha256 "736d2068deaec59e01f527e270cf3fa3ae59bb6786ad08ca813d1bebbcd4038e"
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
