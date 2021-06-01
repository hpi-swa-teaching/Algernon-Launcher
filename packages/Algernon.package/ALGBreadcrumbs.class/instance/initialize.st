initialization
initialize
	super initialize.
	self height: self class defaultHeight;
		 width: self controller width;
		 color: self class defaultColor;
		 position: self calculatePosition.
	self
		initializeNavigateBackIcon;
		initializeDefaultCrumb