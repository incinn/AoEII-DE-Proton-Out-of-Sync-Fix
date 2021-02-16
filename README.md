# AoEII DE Proton Out of Sync Fix

Fix for Age of Empires II Definitive Edition multiplayer "out of sync" error when running via Proton.

This script assumes you have installed the game via Steam, and your steam directory is `~/.steam/`.

Tested with Proton 5.13-6

## Usage

Install dependencies:

```
apt install wget cabextract
```

Download `fix.sh` or clone this repository.

Make `fix.sh` executable:

```
chmod +x fix.sh
```

Run it:

```
./fix.sh
```

## Info 

This fix is a result of information from this source:

https://www.protondb.com/app/813780#s9_k36ytf

This patch is overwritten when Steam updates the game. This script was produced so that I don't have to manually apply the fix every time it is updated.
