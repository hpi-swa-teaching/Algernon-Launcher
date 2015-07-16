initialization
initializeInputField
	| r |
	r := RectangleMorph new
		color: Color white;
		extent: (self class defaultWidth - 10) @ 40;
		center: self center;
		borderWidth: 0.
	textField := ALGInputField new
		contents: '';
		beAllFont: self class font;
		backgroundColor: Color white;
		setProperty: #holdsSeparateDataForEachInstance toValue: true;
		fillsOwner: true.
	r addMorph: textField.
	self addMorph: r.