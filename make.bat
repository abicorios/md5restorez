call adminInstallTools.bat
if not exist md5restorez start /wait cmd /c "git clone https://github.com/szwacz/electron-boilerplate.git md5restorez && cd md5restorez && npm install"
start /wait cmd /c ruby date.rb
if not exist md5restorezPyEmbeddable start /wait cmd /c git clone https://github.com/abicorios/md5restorezPyEmbeddable
start /wait cmd /c "cd md5restorezPyEmbeddable && git pull"
if not exist md5restorezPyEmbeddable.exe call compileMd5restorezPyEmbeddable.bat
compileIfChanged.exe md5restorezPyEmbeddable\md5restorezPyEmbeddable.py md5restorezPyEmbeddable.exe compileMd5restorezPyEmbeddable.bat
if not exist 7z1805-extra (git clone https://github.com/abicorios/7zGitMirror
move 7zGitMirror\7z1805-extra)
copy app.html md5restorez\app /y
copy app.js md5restorez\src /y
if not exist md5restorez\resources\app mkdir md5restorez\resources\app
copy md5restorezPyEmbeddable.exe md5restorez\resources\app /y
copy md5restorezPyEmbeddable.exe md5restorez /y
copy package.json md5restorez\package.json /y
if not exist md5restorez\7z1805-extra xcopy 7z1805-extra md5restorez\7z1805-extra\ /s /y
if not exist md5restorez\resources\app\7z1805-extra\ xcopy 7z1805-extra md5restorez\resources\app\7z1805-extra\ /s /y
copy nintendo_x_sega_3_reborn__wallpaper_by_thegamerlover-db9kgj3.jpg md5restorez\app /y
copy background.js md5restorez\src /y
