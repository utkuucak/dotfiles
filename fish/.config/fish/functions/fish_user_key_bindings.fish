function fish_user_key_bindings
  # Ctrl + n for next command
  bind -M insert \cp "commandline -f history-search-backward"

  # Ctrl + p for previous command
  bind -M insert \cn "commandline -f history-search-forward"  
end
