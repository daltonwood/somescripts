#!/bin/zsh
PASSWORD=`security find-generic-password -s "VaultUser" -a "dalton" -w`

[ ! -d "/Volumes/AdminExecs" ] && open -g -j smb://dalton:$PASSWORD@vault/AdminExecs

rsync -avhHP "/Volumes/AdminExecs/Systems Admin/Sys Docs/Joplin" "/Users/Dalton/Documents/Documentation"