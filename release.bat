call make.bat
start /wait cmd /c "cd md5restorez && npm run release"
copy  md5restorez\dist\md5restorez* /y
