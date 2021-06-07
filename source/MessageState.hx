package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.text.FlxTypeText;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxSpriteGroup;
import flixel.input.FlxKeyManager;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

using StringTools;

class MessageState extends MusicBeatState
{

	override function create()
	{



		super.create();
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGBlue', 'preload'));
		bg.screenCenter();
		add(bg);
		
		super.create();
		var perpsona:FlxSprite = new FlxSprite().loadGraphic(Paths.image('perp-hap', 'shared'));
		perpsona.x += 40;
		perpsona.y -= 500;
		add(perpsona);

        super.create();
        var txt:FlxText = new FlxText(0, 0, FlxG.width,
            "Piconjo Never Dies song & Piconjo character \nby Piconjo @ Newgrounds & Patreon
            \nMod & Art \nby Pepperly @ Newgrounds, tumblr, caard \nand pepperly_art @ twitter
            \nMenu song: Fight Them Until We Cant \nby Zander Noriega @ opengameart
            \nSpecial thanks to \nFriday Night Funkin OG Team \nKadeDev & co \n & Newgrounds",
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
			FlxG.switchState(new MainMenuState());
		}

		if (controls.BACK)
			{
				//leftState = true;
				FlxG.switchState(new MainMenuState());
			}

		super.update(elapsed);
	}
}

