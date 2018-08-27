call 0installTools.bat
if not exist md5restorez start /wait cmd /c "git clone https://github.com/szwacz/electron-boilerplate.git md5restorez && cd md5restorez && npm install"
start /wait cmd /c ruby date.rb
if not exist md5restorezPyEmbeddable start /wait cmd /c git clone https://github.com/abicorios/md5restorezPyEmbeddable
