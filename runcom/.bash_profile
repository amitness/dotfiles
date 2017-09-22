for DOTFILE in $HOME/dotfiles/system/.{function,env,alias,path,prompt,custom,exports}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
