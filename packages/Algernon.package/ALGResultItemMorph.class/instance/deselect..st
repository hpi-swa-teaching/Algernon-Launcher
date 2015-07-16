event handling
deselect: evt
	super deselect: evt.
	self color: self class nonSelectedColor.
	self initializeIcons; fixBounds.