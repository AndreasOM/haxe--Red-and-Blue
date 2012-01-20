package;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import haxe.Log;

import bluelib.BlueLib;
import redlib.RedLib;

class Purple extends Sprite
{
	static function main()
	{
		var redOnly = new Purple();
	}

	var mRed:Bitmap;
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
		mRed = new redlib.RedBitmap();
		Log.trace( mRed );

		Lib.current.root.stage.addChild( mRed );
		Lib.current.root.stage.addChild( mBlue );
		mBlue.x = 25;
		mBlue.y = 25;
	}
}
