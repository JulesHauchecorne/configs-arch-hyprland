function fish_user_key_bindings
    fish_vi_mode
    bind -M $mode \cf accept-autosuggestion
    bind \cf accept-autosuggestion
end

function fish_user_key_bindings
bind -M insert jj "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
bind -M insert kk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
