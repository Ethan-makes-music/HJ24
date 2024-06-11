package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
	var bg:FlxSprite = new FlxSprite(0, 0, AssetPaths.bg__png);
	var lamp:FlxSprite = new FlxSprite(37, 270, AssetPaths.lamplol__png);
	var counter:FlxSprite = new FlxSprite(9, 450, AssetPaths.counter__png);
	var trashCan:FlxSprite = new FlxSprite(808, 608, AssetPaths.trashCan__png);
	var fridge:FlxSprite = new FlxSprite(901, 201, AssetPaths.fridge__png);
	var inventory:FlxSprite = new FlxSprite(1309, 40, AssetPaths.inventory__png);

	var inventoryOpen:Bool = false;

	override public function create()
	{
		super.create();
		add(bg);
		add(lamp);
		add(counter);
		add(fridge);
		add(trashCan);
		add(inventory);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.overlaps(lamp) && FlxG.mouse.justPressed)
		{
			FlxG.switchState(new states.chooseLetter.ChooseLetterState1());
		}
		else if (FlxG.mouse.overlaps(trashCan) && FlxG.mouse.justPressed)
		{
			FlxG.switchState(new states.chooseLetter.ChooseLetterState2());
		}

		if (FlxG.keys.justPressed.I && inventoryOpen == false)
		{
			// openInventory(); Only use for tweening
			inventory.x = 384;
			inventory.y = 40;
			inventoryOpen = true;
		}
		else if (FlxG.keys.justPressed.I && inventoryOpen == true)
		{
			inventory.x = 1309;
			inventory.y = 40;
			inventoryOpen = false;
		}
	}

	function openInventory()
	{
		// var inventoryOpen:Bool = false; // Setup for tweening
		if (inventoryOpen == false)
		{
			inventory.x = 384;
			inventory.y = 40;
		}
	}
}
