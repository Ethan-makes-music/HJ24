package obj;

import flixel.util.FlxSave;

class Functions
{
	public static var inventorySave = new FlxSave();
	public static var slotsLeft:Int = 5; // Moved slotsLeft here to persist its value

	public static function addBlockToInventory(whichBlock:Int)
	{
		inventorySave.bind("inventorySave");

		if (whichBlock == 1 && slotsLeft > 0)
		{
			var aSlot:Int = 0;
			aSlot = slotsLeft;
			inventorySave.data.aSlot = aSlot;
			slotsLeft--;
			inventorySave.flush();
		}
	}
}
