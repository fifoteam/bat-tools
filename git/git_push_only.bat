echo off
echo %1
::����Ŀ¼
cd /d %1
git commit -a -m "AUTO SAVED BY BAT FILE"
git push -u origin master
