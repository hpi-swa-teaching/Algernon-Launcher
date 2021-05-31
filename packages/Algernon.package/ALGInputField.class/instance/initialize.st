initialization
initialize
	super initialize.
	self
		beAllFont: self class defaultFont;
		backgroundColor: self class backgroundColor;
		setProperty: #holdsSeparateDataForEachInstance toValue: true