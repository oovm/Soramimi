#!/usr/bin/env bash
cd ..
git reflog expire --expire=now --all && git gc --prune=now --aggressive
java -jar bfg.jar -b 256K
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push -f