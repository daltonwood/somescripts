#!/bin/zsh

# PUT YOUR DESIRED TARGET FOLDER HERE
cpDIR='/target/folder/here'

# copying any STG backups from user downloads folder to target folder
cp -r $HOME/Downloads/STG-backups-FF-* "$cpDIR"

#find "$mvDIR" -type d -ctime +45 | xargs rm -rf

# deleting any STG backups older than 45 days from user downloads folder
find $HOME/Downloads -name 'STG-backups-FF-*' -type d -ctime +45 | xargs rm -rf

# deleting any STG backups older than 60 days from target folder
find "$cpDIR" -name 'STG-backups-FF-*' -type d -ctime +60 | xargs rm -rf
