function fish_greeting
end

fish_vi_key_bindings

alias v "nvim"
alias mvnnew "mvn archetype:generate -DgroupId=ToolsQA -DartifactId=MavenProject -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false"


if [ "$CURRENT_DESKTOP" = "Hyprland" ]

    alias record "wf-recorder"
    alias lbgbee "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bee.mp4"
    alias lbgfireinspace "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/fireInSpace.mp4"
    alias lbgsakura "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura2.mp4"
    alias lbgsunset "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sunset.mp4"
    alias lbgsakuradrop "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura_drop.mp4"
    alias lbgsakuralake "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/LakeSakura.mp4"
    alias lbgring="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bluering.mp4" 
    alias lbgspace="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/space.mp4" 
    alias bgprettyface=" pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/pretty_girl.jpg"

else
# i3 
    alias record="ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -t 00:00:5 -i :0.0+0,0 /home/jules/Downloads/recording.mp4"
    alias lbspace="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/space.mp4"
    alias lbbee="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bee.mp4"
    alias lbring="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bluering.mp4"
end

