call make.bat
copy app.html md5restorez\app /y
copy app.js md5restorez\src /y
if not exist md5restorez\resources\app mkdir md5restorez\resources\app
copy md5restorezPyEmbeddable.exe md5restorez\resources\app /y
copy md5restorezPyEmbeddable.exe md5restorez /y
copy package.json md5restorez\package.json /y
if not exist md5restorez\7z1805-extra xcopy 7z1805-extra md5restorez\7z1805-extra\ /s /y
if not exist md5restorez\resources\app\7z1805-extra\ xcopy 7z1805-extra md5restorez\resources\app\7z1805-extra\ /s /y
copy mario-3631666_1280.png md5restorez\app /y
start cmd /c "cd md5restorez && npm start"
