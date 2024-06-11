package states.chooseLetter;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import obj.Letters;

class ChooseLetterState2 extends FlxState
{
	var letterI:FlxSprite;
	var letterJ:FlxSprite;
	var letterK:FlxSprite;
	var letterL:FlxSprite;
	var letterM:FlxSprite;
	var letterN:FlxSprite;
	var letterO:FlxSprite;
	var letterP:FlxSprite;

	var bg:FlxSprite = new FlxSprite(0, 0, AssetPaths.bg__png);

	var blocksChosen:Bool = false;
	var blocksChosen2:Bool = false;
	var blocksChosen3:Bool = false;
	var blocksChosen4:Bool = false;

	var seperateAmount:Int = 160;

	override function create()
	{
		super.create();

		letterI = new LetterI();
		letterI.x = 0;

		letterJ = new LetterJ();
		letterJ.x = letterI.x + seperateAmount;

		letterK = new LetterK();
		letterK.x = letterJ.x + seperateAmount;

		letterL = new LetterL();
		letterL.x = letterK.x + seperateAmount;

		letterM = new LetterM();
		letterM.x = letterL.x + seperateAmount;

		letterN = new LetterN();
		letterN.x = letterM.x + seperateAmount;

		letterO = new LetterO();
		letterO.x = letterN.x + seperateAmount;

		letterP = new LetterP();
		letterP.x = letterO.x + seperateAmount;

		add(bg);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		var randomLetter:Int = 0;
		var randomLetter2:Int = 0;
		var randomLetter3:Int = 0;
		var randomLetter4:Int = 0;

		if (blocksChosen == false)
		{
			randomLetter = Random.int(0, 133);
		}
		else if (blocksChosen == true)
		{
			randomLetter = 0;
		}

		if (blocksChosen2 == false)
		{
			randomLetter2 = Random.int(0, 133);
		}
		else if (blocksChosen2 == true)
		{
			randomLetter2 = 0;
		}

		if (blocksChosen3 == false)
		{
			randomLetter3 = Random.int(0, 133);
		}
		else if (blocksChosen3 == true)
		{
			randomLetter3 = 0;
		}

		if (blocksChosen4 == false)
		{
			randomLetter4 = Random.int(0, 133);
		}
		else if (blocksChosen4 == true)
		{
			randomLetter4 = 0;
		}

		switch randomLetter
		{
			case 50:
				add(letterI);
				blocksChosen = true;
			case 100:
				add(letterM);
				blocksChosen = true;
		}

		switch randomLetter2
		{
			case 50:
				add(letterJ);
				blocksChosen2 = true;
			case 100:
				add(letterN);
				blocksChosen2 = true;
		}

		switch randomLetter3
		{
			case 50:
				add(letterK);
				blocksChosen3 = true;
			case 100:
				add(letterO);
				blocksChosen3 = true;
		}

		switch randomLetter4
		{
			case 50:
				add(letterL);
				blocksChosen4 = true;
			case 100:
				add(letterP);
				blocksChosen4 = true;
		}

		if (FlxG.keys.justPressed.BACKSPACE) // Gunna remove this later when I add a back button
		{
			FlxG.switchState(new PlayState()); // TODO: Enter the data for the three leters
		}
	}
}
