updating
createCrumb: aString

	^ TextMorph new
		contents: aString;
		color: self class defaultTextColor;
		wrapFlag: false;
		backgroundColor: self class defaultColor;
		hasDropShadow: false;
		lock: true.