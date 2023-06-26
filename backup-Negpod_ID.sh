#!/bin/bash

username="a0dfc11ba139"
password="899c79fc532cd0591af1"
remote_host="a0dfc11ba139.a982e858.alu-cod.online"
remote_directory="/home/sftp-student/03033/summative"

directory_name="Group-repo"
archive_name="backup-$directory_name.tar.gz"
tar -czf "$archive_name" "$directory_name"

sshpass -p "$password" scp "$archive_name" "$username@$remote_host:$remote_directory"
