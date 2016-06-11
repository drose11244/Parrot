#! /bin/bash

DATE=`date +%Y-%m-%d:%H:%M:%S`
Filepath=/home/derrick/fly/Parrot/Unix/Samples/BebopDroneDecodeStream/ #change your filepath
Count=1
mkdir $DATE

for((;1;))
do
	if [ "${Count}" -ge 0 ] && [ "${Count}" -lt 10 ] && [ -e $Filepath"shot000"$Count".png" ]; then
	echo now:shot000$Count.png
	mv shot000$Count.png $DATE/face.png
		((Count+=1))
		echo "nxt$Count"
		
	elif [ "${Count}" -ge 10 ] && [ "${Count}" -lt 100 ] && [ -e $Filepath"shot00"$Count".png" ]; then
		echo "shot00$Count"
		mv shot00$Count.png $DATE/face.png
		((Count+=1))
		echo "nxt$Count"
		
	elif [ "${Count}" -ge 100 ] && [ "${Count}" -lt 1000 ] && [ -e $Filepath"shot0"$Count".png" ]; then
		echo "shot0$Count"
		mv shot0$Count.png $DATE/face.png
		((Count+=1))
		echo "nxt$Count"
		
	elif [ "${Count}" -ge 1000 ] && [ -e $Filepath"shot"$Count".png" ]; then
		echo "shot$Count"
		mv shot$Count.png $DATE/face.png
		((Count+=1))
		echo "nxt$Count"

	fi

	sleep .000000000001 #mplayer speed
	#sleep .1
done

