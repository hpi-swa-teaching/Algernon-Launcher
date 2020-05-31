initialization
initializeLayout

	self color: self class backgroundColor;
		width: ALGCore defaultWidth;
		borderColor: self class borderColor;
		borderWidth: self class borderWidth;
		height: 0;
		cornerStyle: #square;
		hResizing: #rigid;
		vResizing: #shrinkWrap;
		shadowOffset: 0@0;
		lock: true;
		layoutPolicy: TableLayout new.