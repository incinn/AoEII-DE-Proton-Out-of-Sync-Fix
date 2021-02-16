#!/bin/bash
URL="https://aka.ms/vs/16/release/vc_redist.x64.exe"
DEST="~/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32"

cd $(mktemp -d)
wget ${URL} 2>/dev/null || curl -O ${URL}

cabextract vc_redist.x64.exe
cabextract a10

cp ucrtbase.dll ${DEST}
