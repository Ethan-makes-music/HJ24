package states.chooseLetter;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import obj.Letters;

class ChooseLetterState1 extends FlxState
{
	var letterA:FlxSprite;
	var letterB:FlxSprite;
	var letterC:FlxSprite;
	var letterD:FlxSprite;
	var letterE:FlxSprite;
	var letterF:FlxSprite;
	var letterG:FlxSprite;
	var letterH:FlxSprite;

	var bg:FlxSprite = new FlxSprite(0, 0, AssetPaths.bg__png);

	var blocksChosen:Bool = false;
	var blocksChosen2:Bool = false;
	var blocksChosen3:Bool = false;
	var blocksChosen4:Bool = false;

	var seperateAmount:Int = 160;

	override function create()
	{
		super.create();

		letterA = new LetterA();
		letterA.x = 0;

		letterB = new LetterB();
		letterB.x = letterA.x + seperateAmount;

		letterC = new LetterC();
		letterC.x = letterB.x + seperateAmount;

		letterD = new LetterD();
		letterD.x = letterC.x + seperateAmount;

		letterE = new LetterE();
		letterE.x = letterD.x + seperateAmount;

		letterF = new LetterF();
		letterF.x = letterE.x + seperateAmount;

		letterG = new LetterG();
		letterG.x = letterF.x + seperateAmount;

		letterH = new LetterH();
		letterH.x = letterG.x + seperateAmount;

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
				add(letterA);
				blocksChosen = true;
			case 100:
				add(letterE);
				blocksChosen = true;
		}

		switch randomLetter2
		{
			case 50:
				add(letterB);
				blocksChosen2 = true;
			case 100:
				add(letterF);
				blocksChosen2 = true;
		}

		switch randomLetter3
		{
			case 50:
				add(letterC);
				blocksChosen3 = true;
			case 100:
				add(letterG);
				blocksChosen3 = true;
		}

		switch randomLetter4
		{
			case 50:
				add(letterD);
				blocksChosen4 = true;
			case 100:
				add(letterH);
				blocksChosen4 = true;
		}
		// D

		if (FlxG.keys.justPressed.BACKSPACE) // Gunna remove this later when I add a back button
		{
			FlxG.switchState(new PlayState()); // TODO: Enter the data for the three leters
		}
	}
}
