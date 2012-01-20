all: redonly blueonly

blueonly: blue/blue.swf src/blueonly/blueonly.hx
	haxe blueonly.hxml

blue/blue.swf: blue/blue.png
	make -C blue
	
redonly: red/red.swf src/redonly/redonly.hx
	haxe redonly.hxml
	
red/red.swf: red/red.png
	make -C red
	
