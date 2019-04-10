@echo off
IF NOT EXIST ./node_modules/auto-updater (npm i --only=prod --no-audit --no-progress --loglevel=error) ELSE (echo Node.JS modules are installed)
IF NOT EXIST ./userconfig.json (RENAME "./userconfig.example.json" "userconfig.json")
IF NOT EXIST ./botconfig.json (RENAME "./botconfig.example.json" "botconfig.json")
title VKCoinY - Batch Script
node index.js
echo Bot was forced to exit . . .
pause
