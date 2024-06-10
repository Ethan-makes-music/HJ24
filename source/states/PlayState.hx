package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var bg:FlxSprite = new FlxSprite(0, 0, AssetPaths.bg__png);
	var lamp:FlxSprite = new FlxSprite(37, 270, AssetPaths.lamplol__png);
	var counter:FlxSprite = new FlxSprite(9, 450, AssetPaths.counter__png);
	var trashCan:FlxSprite = new FlxSprite(808, 608, AssetPaths.trashCan__png);
	var fridge:FlxSprite = new FlxSprite(901, 201, AssetPaths.fridge__png);

	override public function create()
	{
		super.create();
		add(bg);
		add(lamp);
		add(counter);
		add(fridge);
		add(trashCan);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.overlaps(lamp) && FlxG.mouse.justPressed)
		{
			FlxG.switchState(new states.ChooseLetterState1());
		}
	}
}
