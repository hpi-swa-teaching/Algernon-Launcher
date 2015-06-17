initialization
initializeMorph
	"setup graphical properties of Morph"
	| r background |
	self
		extent: 420 @ 60;
		center: World center;
		color: Color black;
		cornerStyle: #rounded;
		borderWidth: 0;
		borderColor: Color black.
	
	"generate textField"
	r := RectangleMorph new
		color: (Color veryLightGray lighter);
		extent: 400 @ 40;
		center: self center;
		borderWidth: 1.

	background := ALGBackground new
		color: (Color white alpha: 0.3);
		extent: World extent;
		center: self center;
		borderWidth: 0.

	textField := ALGInputField new
		contents: '';
		beAllFont: self class font;
		setProperty: #holdsSeparateDataForEachInstance toValue: true;
		fillingOnOff.
	r addMorph: textField.
	
	self addMorph: background.
	self addMorph: r.

	currentAlgertemLabel := TextMorph new
		contents: self currentAlgertemString;
		center: (self left + 12)@(self top - 12);
		color: Color black;
		backgroundColor: nil;
		hasDropShadow: false;
		borderWidth: 0;
		beAllFont: self class font.
	self addMorphFront: currentAlgertemLabel.

	refreshLabel := TextMorph new
		contents: 'Updating';
		center: (self center x)@((self center y)-40);
		color: Color veryLightGray;
		backgroundColor: nil;
		hasDropShadow: false;
		borderWidth: 0.
	self currentAlgertem: nil.