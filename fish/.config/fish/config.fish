if status is-interactive
  fish_vi_key_bindings

  # Ctrl + n for next command
  bind -M insert \cp "commandline -f history-search-backward"

  # Ctrl + p for previous command
  bind -M insert \cn "commandline -f history-search-forward"  

  abbr --add grc env PYTHONPATH=/usr/lib/python3/dist-packages:/usr/lib/python3/site-packages LD_LIBRARY_PATH=/usr/lib gnuradio-companion %F

end


