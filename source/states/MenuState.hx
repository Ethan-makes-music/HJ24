package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class MenuState extends FlxState
{
	var bg:FlxSprite = new FlxSprite(0, 0, AssetPaths.menuBG__png);

	override function create()
	{
		super.create();
		add(bg);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.justPressed.ENTER)
		{
			FlxG.switchState(new states.PlayState());
		}
	}
}
