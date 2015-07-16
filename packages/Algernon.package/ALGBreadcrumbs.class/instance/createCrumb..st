updating
createCrumb: aString
	^ TextMorph new
		contents: aString;
		color: Color white;
		wrapFlag: false;
		backgroundColor: self class defaultColor;
		hasDropShadow: false.