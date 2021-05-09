initialization
initializeLayout
	self color: self class backgroundColor;
		width: ALGCore defaultWidth;
		borderColor: self class borderColor;
		borderWidth: self class borderWidth;
		cornerStyle: #square;
		hResizing: #rigid;
		height: (World height / 3);
		shadowOffset: 0@0.
		
	self  scroller 
		layoutPolicy: TableLayout new.