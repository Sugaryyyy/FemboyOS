1. Run ./prepare.sh as a normal user (not root)
2. Run ./create.sh as distroot user
3. Run ./create-part-2.sh as sudo (used to mount)
4. If you want to make an ISO file, the Linux Live fork is: https://github.com/Sugaryyyy/Femboy-Linux-Live
4a. Move the repo to /tmp, so it doesn't get included in the ISO.
4b. To build the ISO file, run ./build in chroot. 