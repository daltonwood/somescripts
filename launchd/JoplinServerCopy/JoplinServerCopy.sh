#!/bin/zsh
PASSWORD=`security find-generic-password -s "VaultUser" -a "dalton" -w`

[ ! -d "/Volumes/Cave/AdminExecs" ] && open -g -j smb://dalton:$PASSWORD@vault/Cave/AdminExecs

rsync -avhHP "/Volumes/Cave/AdminExecs/SysAdmin/Sys Docs/Joplin" "/Users/Dalton/Documents/Documentation"
