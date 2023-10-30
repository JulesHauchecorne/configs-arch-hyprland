function fish_greeting
end

fish_vi_key_bindings

alias v "nvim"
alias mvnnew "mvn archetype:generate -DgroupId=ToolsQA -DartifactId=MavenProject -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false"


if [ "$CURRENT_DESKTOP" = "Hyprland" ]

    alias record "wf-recorder"
    alias lbgsamurai "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/samurai.mp4"
    alias lbgbee "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bee.mp4"
    alias lbgfireinspace "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/fireInSpace.mp4"
    alias lbgsakura "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura2.mp4"
    alias lbgsunset "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sunset.mp4"
    alias lbgsakuradrop "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/sakura_drop.mp4"
    alias lbgsakuralake "pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/LakeSakura.mp4"
    alias lbgring="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/bluering.mp4" 
    alias lbgspace="pkill mpvpaper; pkill swaybg;  mpvpaper '*' -o '--loop --no-audio' /home/jules/Pictures/backgrounds/live-wallpaper/space.mp4" 

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
    alias record="ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -t 00:00:5 -i :0.0+0,0 /home/jules/Downloads/recording.mp4"

    alias lbgfireinspace="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/fireInSpace.mp4"
    alias lbgsakuralake="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/LakeSakura.mp4"
    alias lbgsunset="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sunset.mp4"
    alias lbgsakura="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sakura2.mp4"
    alias lbgsakuradrop="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/sakura_drop.mp4"
    alias lbgsamurai="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/samurai.mp4"
    alias lbgspace="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/space.mp4"
    alias lbgbee="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bee.mp4"
    alias lbgring="pkill xwinwrap ; xwinwrap -g 1920x10800 -fs -ov -ni -s -nf -- mpv -wid WID --loop --no-audio /home/jules/Pictures/backgrounds/live_wallpaper/bluering.mp4"

    alias bgluffy=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/luffy.jpg"
    alias bgdreamworld=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/dream_world.jpg"
    alias bglazypanda=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/lazy_panda.jpg"
    alias bgcityeater=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/cityEater.jpg"
    alias bgcatknight=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/catknight.jpg"
    alias bgcatforest=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/catForest.jpg"
    alias bgeclipse=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/eclipse.jpg"
    alias bgcatno=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/catno.jpg"
    alias bgprettyface=" pkill xwinwrap ; feh --bg-fill ~/Pictures/backgrounds/pretty_girl.jpg"
end

