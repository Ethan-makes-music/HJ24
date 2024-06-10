package states;

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

	override function create()
	{
		super.create();

		letterA = new LetterA();
		letterB = new LetterB();
		letterC = new LetterC();
		letterD = new LetterD();
		letterE = new LetterE();
		letterF = new LetterF();
		letterG = new LetterG();
		letterH = new LetterH();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
