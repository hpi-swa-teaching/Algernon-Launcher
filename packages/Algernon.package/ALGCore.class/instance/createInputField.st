initialization
createInputField

	^ ALGInputField new
		contents: '';
		beAllFont: ALGInputField defaultFont;
		backgroundColor: Color white;
		setProperty: #holdsSeparateDataForEachInstance toValue: true;
		fillsOwner: true