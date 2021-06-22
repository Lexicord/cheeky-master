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
        var TEXRTBALLS:FlxText = new FlxText(0, 0, FlxG.width,
            "Cheeky Character Created by M U G E N
			\nThanks To the Friday Night Funkin' Team and Newgrounds 
            \nArt, Animation, and Music Done By Wizord
            \nProgramming Done By @Lexicord2
			\nWeek 2 Music Done By lonestarr
			\nCredits To Kade Developer for Kade Engine
            \nThank You For Playing!",
            48);

			TEXRTBALLS.setFormat("VCR OSD Mono", 48, FlxColor.fromRGB(255, 255, 255), CENTER);

			TEXRTBALLS.borderSize = 5;
			TEXRTBALLS.borderStyle = FlxTextBorderStyle.OUTLINE;

			TEXRTBALLS.borderColor = FlxColor.BLACK;
			TEXRTBALLS.borderStyle = FlxTextBorderStyle.OUTLINE;
			TEXRTBALLS.screenCenter();
			add(TEXRTBALLS);

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

