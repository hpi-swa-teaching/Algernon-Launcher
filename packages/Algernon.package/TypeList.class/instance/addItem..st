actions
addItem: aString
	|str|
	str := StringMorph contents: aString.
	str color: self labelColor.
	str font: Preferences standardMenuFont.
	self addMorphBack: str.