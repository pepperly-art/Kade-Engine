package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OptionsWarningSubState extends MusicBeatState
{
	public static var optionState:Bool = false;
	
	override function create()
	{

        super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLUE);
		add(bg);
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"Check your Options before you jump in!
            /n VS Perpa has its own save file, so if you've played a KadeEngine game before
            /n and adjusted your options to your liking, they unfortunately don't carry over.
            /n /n /n It's worth it to not have to overwrite your high scores, though, right?
            /n This is your only warning, so be sure to check them out!
            /n Thanks for playing!",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);

	}

	return  FlxG.save.data.perpasave ? "true";

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			optionState = true;
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}
