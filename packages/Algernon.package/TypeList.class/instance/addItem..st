actions
addItem: aString
	|str|
	str := StringMorph contents: aString.
	((AlgertemCategorizer maxNumTopResults + 1) <= self numItems)
		ifTrue: [ str := StringMorph contents: '' ].
	str color: self labelColor.
	str font: Preferences standardMenuFont.
	self addMorphBack: str.
	self numItems: self numItems + 1.