#!/bin/bash
command -v wget >/dev/null 2>&1 || { echo "wget not found, aborting." >&2; exit 1; }
command -v cabextract >/dev/null 2>&1 || { echo "cabextract not found, aborting." >&2; exit 1; }

URL="https://aka.ms/vs/16/release/vc_redist.x64.exe"
DEST="/home/${USER}/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32"

cd $(mktemp -d)
echo -e "Downloading to $PWD\n"
wget ${URL} || { echo "unable to download file, aborting." >&2; exit 1; }

echo "Extracting..."
cabextract vc_redist.x64.exe

ARCHIVE="a10"
if test -f "$ARCHIVE"; then
	cabextract $ARCHIVE
else
	echo "target archive not found, aborting"
	exit 1
fi

TARGET="ucrtbase.dll"
if test -f "$TARGET"; then
	echo -e "Moving $TARGET to $DEST\n"
	mv $TARGET $DEST && echo "Patch complete."
else
	echo "target dll not found, aborting"
	exit 1
fi
