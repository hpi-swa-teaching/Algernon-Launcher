initialization
initializeBounds
	self width: self menuMorph width - (self menuMorph borderWidth * 2).
	self vResizing: #shrinkWrap