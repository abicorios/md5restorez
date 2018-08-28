require 'date'
f=File.read("package.json")
name=f[/(?<="name": ")\w+/]
regv=/(\d+\.){2}\d+/
v=f[/version.*\n/][regv]
source=File.read("app.html")
source.sub!(/(?<=<title>)\w+/,name)
source.sub!(/(?<=<p>)(\w+)(?= ([^\.]{1,4}\.){4})/,name)
source.sub!(/(?<=v)(\d+\.){2}\d+/,v)
date=Date.today.strftime("%d.%m.%Y")
source.sub!(/(\d{2}\.){2}\d{4}/,date)
File.open("app.html","w") {|f| f.puts source}
