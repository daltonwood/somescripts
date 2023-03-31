#!/bin/zsh
PASSWORD=$(security find-generic-password -s "RenderAcct" -a "render" -w)

pkill -x DeadlineMonitor10.app 

sudo mkdir /Library/Logs/Thinkbox /Library/Logs/Thinkbox/Deadline10

open 'smb://render:$PASSWORD@10.0.1.27/DeadlineRepository10'

open -a /Applications/Thinkbox/Deadline10/DeadlineMonitor10.app
