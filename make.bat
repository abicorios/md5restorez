call 0installTools.bat
if not exist md5restorez start /wait cmd /c "git clone https://github.com/szwacz/electron-boilerplate.git md5restorez && cd md5restorez && npm install"
start /wait cmd /c ruby date.rb
if not exist md5restorezPyEmbeddable start /wait cmd /c git clone https://github.com/abicorios/md5restorezPyEmbeddable
start /wait cmd /c "cd md5restorezPyEmbeddable && git pull"
if not exist md5restorezPyEmbeddable.exe call compileMd5restorezPyEmbeddable.bat
compileIfChanged.exe md5restorezPyEmbeddable\md5restorezPyEmbeddable.py md5restorezPyEmbeddable.exe compileMd5restorezPyEmbeddable.bat
if not exist 7z1805-extra (git clone https://github.com/abicorios/7zGitMirror
move 7zGitMirror\7z1805-extra)
