function fish_greeting
end

fish_vi_key_bindings

alias v "nvim"

# hyprland
# alias record "wf-recorder"
# alias lbgsakura "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura2.mp4"
# alias lbgring="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bluering.mp4" 
# alias lbgspace="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/space.mp4" 
# alias bgprettyface=" pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/pretty_girl.jpg"

# i3 
alias record="ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -t 00:00:5 -i :0.0+0,0 /home/jules/Downloads/recording.mp4"
alias lbspace="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/space.mp4"
alias lbbee="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bee.mp4"
alias lbring="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bluering.mp4"

