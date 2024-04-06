[[ -f ~/.bashrc ]] && . ~/.bashrc

export BEMOJI_PICKER_CMD='dmenu -l 20 -g 3 -i -F -fn Iosevka-15'
export SDL_SOUNDFONTS='/usr/share/soundfonts/default.sf2'
export ANDROID_SDK_ROOT=/opt/android-sdk

export PATH=$PATH:$HOME/.local/bin:$HOME/.local/share/starter-scripts:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
