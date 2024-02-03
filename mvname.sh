#!/bin/bash
#uage eg: mvname mp3 mp4
for i in $(ls *.$1); do
	mv $i $(basename $i .$1).$2
done
for i in $(ls *.$2); do
	echo $i
done
