package obj;

import flixel.util.FlxSave;

class Functions
{
	public static function addBlockToInventory(whichBlock:Int) // I have never been able to code a inventory system this is gunna be hard asf
	{
		var slotsLeft:Int = 5;

		var inventorySave = new FlxSave();
		inventorySave.bind("inventorySave"); // Theres a chance none of this is going to work and I have to make it desktop exclusive
		// Cuz doing this shit on desktop is 50x more easy since I already know how to do saveData because of FTS

		if (whichBlock == 1)
		{
			var aSlot:Int = 0;
			if (slotsLeft == 5)
			{
				inventorySave.data.aSlot = 5;
				slotsLeft = slotsLeft - 1;
			}
			else if (slotsLeft == 4)
			{
				inventorySave.data.aSlot = 4;
				slotsLeft = slotsLeft - 1;
			}
			else if (slotsLeft == 3)
			{
				inventorySave.data.aSlot = 3;
				slotsLeft = slotsLeft - 1;
			}
			else if (slotsLeft == 2)
			{
				inventorySave.data.aSlot = 2;
				slotsLeft = slotsLeft - 1;
			}
			else if (slotsLeft == 1)
			{
				inventorySave.data.aSlot = 1;
				slotsLeft = slotsLeft - 1;
			}
			else if (slotsLeft == 0)
			{
				inventorySave.data.aSlot = 0;
				slotsLeft = slotsLeft - 1;
			}
		}
	}
} // Just realized that Im going to have to hard code every fucking letter... I may look at my scratch game with a inventory system so I know how to do this shit
// Future Ethan, if your reading this. FUCK YOU!! I'm NOT doing this right now
