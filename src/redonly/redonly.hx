package;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import haxe.Log;

import redlib.RedLib;

class RedOnly extends Sprite
{
	static function main()
	{
		var redOnly = new RedOnly();
	}

	var mRed:Bitmap;
	
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
		mRed = new redlib.RedBitmap();
		Log.trace( mRed );

		Lib.current.root.stage.addChild( mRed );
	}
}
