event handling
deselect
	self color: self class normalFillStyle.
	self initializeIcons; fixBounds.
	self selected: false.