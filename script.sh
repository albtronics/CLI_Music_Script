#!/bin/bash

cd /root/Music/

digit=1
musics=(*)

while [ 1 ]
do
    ls | nl | lolcat
    color="\e[1;3"$digit"m"
    echo -e $color
    read -p "Type Music's Number to Listen: " number
    
    play "${musics[$number-1]}"
       
    let "digit++"   
    
    if [ $digit -ge 8 ]
	then
    digit=1
    fi
    echo ""
            
done
