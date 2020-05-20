# tizen-gbs-docker  

docker build -t tizen/gbs .  


docker run  -it  -v $HOME:/home/tizen tizen/gbs003 gbs build -A armv7l  



docker run --cap-add SYS_RAWIO --cap-add SYS_CHROOT --cap-add IPC_LOCK -it  -v $HOME:/home/tizen tizen/gbs gbs build -A armv7l  

docker run --privileged --cap-add=SYS_RAWIO --cap-add=SYS_CHROOT --cap-add=IPC_LOCK --cap-add=SYS_ADMIN -it  -v $HOME:/root tizen/gbs005 gbs build -A armv7l  






docker run --privileged --cap-add=SYS_RAWIO --cap-add=SYS_CHROOT --cap-add=IPC_LOCK --cap-add=SYS_ADMIN -it  -v $HOME:/home/tizen -w /home/tizen/workspace/tizen/dlog tizen/gbs gbs build -A armv7l  

