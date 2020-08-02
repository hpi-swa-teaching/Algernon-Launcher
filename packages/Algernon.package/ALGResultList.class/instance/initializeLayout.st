initialization
initializeLayout
	self color: self class backgroundColor;
		width: ALGCore defaultWidth;
		height: 0;
		borderColor: self class borderColor;
		borderWidth: self class borderWidth;
		cornerStyle: #square;
		hResizing: #rigid;
		vResizing: #shrinkWrap;
		shadowOffset: 0@0;
		layoutPolicy: TableLayout new.