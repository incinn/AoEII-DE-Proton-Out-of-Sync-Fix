#!/bin/bash

cd $(mktemp -d)
wget "https://aka.ms/vs/16/release/vc_redist.x64.exe"
cabextract vc_redist.x64.exe
cabextract a10

cp ucrtbase.dll ~/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32

