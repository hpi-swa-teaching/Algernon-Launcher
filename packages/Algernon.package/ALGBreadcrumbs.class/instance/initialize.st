initialization
initialize
	super initialize.
	self
		height: self class defaultHeight;
		width: self controller width;
		color: self class defaultColor;
		position: self controller position x @ (self controller position y - self height);
		lock: true.
	self initializeDefaultCrumb.