#!/bin/sh
echo [$(date)] $2, $3, $1 "<br>" >> /data/_log.html
if [ $2 -eq 0 ]; then
	exit 0
fi
filepath=$3
mv -r "$3" "/data${filepath#/data}" || mv "$3" "/data${filepath#/data}"
exit 0