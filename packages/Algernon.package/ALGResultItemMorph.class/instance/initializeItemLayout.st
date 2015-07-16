initialization
initializeItemLayout
	self color: self class nonSelectedColor;
		extent: self menuMorph width @ self class itemHeight.
	"itemFont := StringMorph new.
	itemFont font: self font; contents: self item name.
	Transcript show: itemFont width; cr."