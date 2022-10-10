#!/bin/zsh
PASSWORD=`security find-generic-password -s "BasementUser" -a "user" -w`

[ ! -d "/Volumes/AdminExecs" ] && open -g -j smb://user:$PASSWORD@basement/AdminExecs

rsync -avhHP "/Volumes/AdminExecs/Systems Admin/Sys Docs/Joplin" "/Users/Dalton/Documents/Documentation"
