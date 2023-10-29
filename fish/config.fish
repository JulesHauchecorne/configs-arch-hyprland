function fish_greeting
end

fish_vi_key_bindings

alias v "nvim"
alias mvnnew "mvn archetype:generate -DgroupId=ToolsQA -DartifactId=MavenProject -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false"

if [ $XDG_BACKEND = "wayland" ]
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

end

