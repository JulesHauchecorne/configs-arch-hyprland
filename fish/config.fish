function fish_greeting
end

fish_vi_key_bindings

set -x LIBMYSQL_ENABLE_CLEARTEXT_PLUGIN 1
# set -x DISPLAY 172.25.240.1:0.0
set -x DISPLAY $(ip route list default | awk '{print $3}'):0
set -x XDG_RUNTIME_DIR /home/jules/ 
set -x RUNLEVEL 3

alias v "nvim"
alias mvnnew "mvn archetype:generate -DgroupId=FDM -DartifactId=MavenProject -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false"
fish_add_path /home/jules/.local/bin/

if [ "$XDG_CURRENT_DESKTOP" = "Hyprland" ]

    alias record "wf-recorder"

    alias lbgshibasamurai "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/shibaSamurai.mp4"
    alias lbgsamurai "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/samurai.mp4"
    alias lbgbee "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bee.mp4"
    alias lbgfireinspace "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/fireInSpace.mp4"
    alias lbgsakura "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura2.mp4"
    alias lbgsunset "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sunset.mp4"
    alias lbgsakuradrop "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura_drop.mp4"
    alias lbgsakuralake "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/LakeSakura.mp4"
    alias lbgring="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bluering.mp4" 
    alias lbgspace="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/space.mp4" 

    alias bgsnowgirl="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/snowGirl.jpg"
    alias bgcherryblossom="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/cherryblossom.jpg.jpg"
    alias bgprettyface="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/pretty_girl.jpg"
    alias bgluffy="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/luffy.jpg"
    alias bgdreamworld="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/dreamworld.jpg"
    alias bglazypanda="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/lazypanda.jpg"
    alias bgcityeater="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/cityeater.jpg"
    alias bgcatknight="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/catknight.jpg"
    alias bgcatforest="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/catforest.jpg"
    alias bgeclipse="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/eclipse.jpg"
    alias bgcatno="pkill mpvpaper; pkill swaybg; swaybg -m fill -i ~/Pictures/backgrounds/catno.jpg"

else
# i3 
    alias record="ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -t 00:10:0 -i :0.0+0,0 /home/jules/Downloads/recording.mp4"

    alias lbgshibasamurai="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/shibaSamurai.mp4"
    alias lbgfireinspace="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/fireInSpace.mp4"
    alias lbgsakuralake="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/LakeSakura.mp4"
    alias lbgsunset="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sunset.mp4"
    alias lbgsakura="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sakura2.mp4"
    alias lbgsakuradrop="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sakura_drop.mp4"
    alias lbgsamurai="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/samurai.mp4"
    alias lbgspace="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/space.mp4"
    alias lbgbee="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bee.mp4"
    alias lbgring="killall xwinwrap ; sleep 0.5 ; xwinwrap -g 1920x1080 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bluering.mp4"

    alias bgsnowgirl=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/snowGirl.jpg"
    alias bgcherryblossom=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/cherryblossom.jpg"
    alias bgluffy=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/luffy.jpg"
    alias bgdreamworld=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/dream_world.jpg"
    alias bglazypanda=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/lazy_panda.jpg"
    alias bgcityeater=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/cityEater.jpg"
    alias bgcatknight=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/catknight.jpg"
    alias bgcatforest=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/catForest.jpg"
    alias bgeclipse=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/eclipse.jpg"
    alias bgcatno=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/catno.jpg"
    alias bgprettyface=" killall xwinwrap ; sleep 0.5 ; feh --bg-fill ~/Pictures/backgrounds/pretty_girl.jpg"
end

