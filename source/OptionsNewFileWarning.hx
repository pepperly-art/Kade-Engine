package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OptionsNewFileWarning extends MusicBeatState
{

	override function create()
	{

        super.create();
		//var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BROWN);
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('week54prototype', 'shared'));
		bg.scale.x *= 1.55;
		bg.scale.y *= 1.55;
		add(bg);
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"Check your Options before you jump in!
			\nVS Perpa has its own save file!\nIt's worth it to not have to overwrite your high scores, right?
            \nThis'll be your only warning,\nso be sure to check yourself before you wreck yourself!
			\nThanks for playing!",
			32);


			txt.setFormat("VCR OSD Mono", 32, FlxColor.fromRGB(200, 200, 200), CENTER);
			txt.borderColor = FlxColor.BLACK;
			txt.borderSize = 3;
			txt.borderStyle = FlxTextBorderStyle.OUTLINE;
			txt.screenCenter();
		add(txt);

	}


	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.save.data.savewarning = true;
			//optionState = true;
			FlxG.switchState(new MainMenuState());
		}

		//backspace is just for testing so I don't have to keep deleting my save file lmao
		//keeps the warning, be sure to remove this before final?
		if (controls.BACK)
			{
				//leftState = true;
				FlxG.switchState(new MainMenuState());
			}

		super.update(elapsed);
	}
}
