#!/bin/zsh
cpDIR=/Users/dalton/Sync/ffTabGroups/

cp -r $HOME/Downloads/STG-backups-FF-* "$cpDIR"

find "$mvDIR" -type d -ctime +45 | xargs rm -rf

find $HOME/Downloads/ -name STG-backups-FF-* -type d -ctime +45 -print | xargs rm -rf
