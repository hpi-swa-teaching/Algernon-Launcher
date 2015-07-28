initialization
initalize

	super initialize.
	self
		beAllFont: self class font;
		backgroundColor: self class backgroundColor;
		setProperty: #holdsSeparateDataForEachInstance toValue: true;
		fillsOwner: true