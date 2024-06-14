package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;
import obj.Functions;
import obj.Letters;

class PlayState extends FlxState
{
	var bg:FlxSprite = new FlxSprite(0, 0, AssetPaths.bg__png);
	var lamp:FlxSprite = new FlxSprite(37, 270, AssetPaths.lamplol__png);
	var counter:FlxSprite = new FlxSprite(9, 450, AssetPaths.counter__png);
	var trashCan:FlxSprite = new FlxSprite(808, 608, AssetPaths.trashCan__png);
	var fridge:FlxSprite = new FlxSprite(901, 201, AssetPaths.fridge__png);
	var inventory:FlxSprite = new FlxSprite(1309, 40, AssetPaths.inventory__png);

	var inventoryOpen:Bool = false;

	var saveData:Int = 0;

	var letterA:FlxSprite;

	var fullText:String = "";

	override public function create()
	{
		super.create();
		add(bg);
		add(lamp);
		add(counter);
		add(fridge);
		add(trashCan);

		// Bind the save data
		Functions.inventorySave.bind("inventorySave");

		// Initialize saveData
		if (Functions.inventorySave.data.aSlot != null)
		{
			saveData = Functions.inventorySave.data.aSlot;
		}
		else
		{
			Functions.inventorySave.data.aSlot = 0;
			Functions.inventorySave.flush();
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Update saveData if it has changed
		if (Functions.inventorySave.data.aSlot != saveData)
		{
			saveData = Functions.inventorySave.data.aSlot;
		}

		if (saveData == 5)
		{
			letterA = new LetterA();
			letterA.x = inventory.x;
			letterA.y = inventory.y;
			if (inventoryOpen)
			{
				add(letterA);
			}

			if (!inventoryOpen)
			{
				remove(letterA); // WHY THE FUCK WONT THE A REMOVE!!!
			}
		}
		else
		{
			remove(trashCan);
		}

		if (FlxG.mouse.overlaps(lamp) && FlxG.mouse.justPressed)
		{
			FlxG.switchState(new states.chooseLetter.ChooseLetterState1());
		}
		else if (FlxG.mouse.overlaps(trashCan) && FlxG.mouse.justPressed)
		{
			FlxG.switchState(new states.chooseLetter.ChooseLetterState2());
		}

		if (FlxG.keys.justPressed.I && !inventoryOpen)
		{
			inventory.x = 384;
			inventory.y = 40;
			inventoryOpen = true;
			add(inventory);
		}
		else if (FlxG.keys.justPressed.I && inventoryOpen)
		{
			inventory.x = 1309;
			inventory.y = 40;
			inventoryOpen = false;
			remove(letterA);
			remove(inventory);
		}

		if (FlxG.keys.pressed.BACKSPACE && FlxG.keys.pressed.SEVEN)
		{
			Functions.inventorySave.erase();
		}
	}

	function openInventory()
	{
		if (!inventoryOpen)
		{
			inventory.x = 384;
			inventory.y = 40;
		}
	}
}
