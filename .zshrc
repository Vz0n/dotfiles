#Some aliases here
alias ls="lsd"
alias ip="ip --color=auto"
alias {vi,vim}="nvim"
alias traceroute="tracepath"
alias {htop,bashtop}="bpytop"
alias df="duf"
alias ps="procs"
# Lost 4 hours on something just because this program didn't show me an object that was on Active Directory deleted objects CN
alias ldapsearch="ldapsearch -e 1.2.840.113556.1.4.417"

function hex2dec(){
  printf "Type a hex number: "
  read hexNum
  echo -n "The decimal value is: "
  echo "obase=10; ibase=16; $hexNum" | bc
}

function settarget(){
    echo "$@" > ~/.config/waybar/scripts/target
}

function cleartarget(){
    echo '' > ~/.config/waybar/scripts/target
}

function prepare(){
  if [ -z $1 ]; then
    echo "Usage: $0 <target-name>"
    return 1
  fi
  mkdir -p $1/{assets,network}
  touch $1/notes.txt
}
function cat(){
  bat --style=plain --paging=never $@
}
function ssh(){
  kitty +kitten ssh $@
}
function image(){
  kitty +kitten icat $@
}
function ip2dec () {
    if [ -z $@ ]; then
      echo "Usage: ip2dec [ip.address.ipv4]"
      return
    fi
    local a b c d ip=$@
    IFS=. read -r a b c d <<< "$ip"
    printf '%d\n' "$((a * 256 ** 3 + b * 256 ** 2 + c * 256 + d))"
}
function clipboard(){
  if [ -z $1 ]; then
    echo "Please provide an input file"
  else
    wl-copy -n < $1
  fi
}
function wallpaper(){
  if [ -f "$1" ]; then
    echo "Setting wallpaper to $1..."
    swww img -t wipe $1
    echo "Done."
  else
    echo "Usage: wallpaper <file-path>"
  fi
}

function clear_pacman_cache(){
   # Add echos just for verbose stuff.
   echo 'Cleaning packages cache...'
   doas rm -rf /var/cache/pacman/pkg/*
   echo 'Done.'
}

# Load our API tokens for scripts
source ~/.api_tokens

export PATH=$PATH:~/.local/bin
fastfetch
