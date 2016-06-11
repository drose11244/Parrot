#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

int main(){
//execlp("mplayer", "mplayer","/tmp/arsdk_l94apv/arsdk_fifo", NULL);
//execlp("mplayer", "mplayer","/tmp/arsdk_jy5Fxz/arsdk_fifo", "-demuxer", "rawvideo", "-rawvideo", "w=640:h=368:fps=30:format=i420", NULL);
		execlp("./cover.sh", "cover.sh", "> cover.txt");
//execlp("mplayer", "mplayer","/home/derrick/fly/Parrot/Unix/Samples/BebopDroneDecodeStream", "-demuxer", "rawvideo", "-rawvideo", "w=640:h=368:fps=30:format=i420", NULL);




};
