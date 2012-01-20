package;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import haxe.Log;

import bluelib.BlueLib;

class BlueOnly extends Sprite
{
	static function main()
	{
		var blueOnly = new BlueOnly();
	}

	var mBlue:Bitmap;
	
	public function new()
	{
		super();
		Lib.current.root.addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}

	public function onEnterFrame( event : Event )
	{
		if (Lib.current.root.loaderInfo.bytesLoaded == Lib.current.root.loaderInfo.bytesTotal)
		{
			Lib.current.root.removeEventListener( Event.ENTER_FRAME, onEnterFrame );
			run();
		}
	}

	public function run( ):Void
	{
		Log.trace( "run()" );
		mBlue = new bluelib.BlueBitmap();
		Log.trace( mBlue );

		Lib.current.root.stage.addChild( mBlue );
	}
}
