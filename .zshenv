if [ -d "$HOME/.cargo/env" ]; then
  export PATH="$PATH:$HOME/.cargo/env"
fi
. "$HOME/.cargo/env"
