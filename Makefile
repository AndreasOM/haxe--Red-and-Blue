all: redonly blueonly purple

purple: blue/blue.swf red/red.swf src/purple/purple.hx
	haxe purple.hxml
	
blueonly: blue/blue.swf src/blueonly/blueonly.hx
	haxe blueonly.hxml

blue/blue.swf: blue/blue.png
	make -C blue
	
redonly: red/red.swf src/redonly/redonly.hx
	haxe redonly.hxml
	
red/red.swf: red/red.png
	make -C red
	
