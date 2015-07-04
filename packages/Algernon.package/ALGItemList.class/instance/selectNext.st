selection
selectNext
	
	selectedItem ifNotNil: [selectedItem contents: (self selectedAlgernonListItem name)].
	actionList ifNotNil: [^actionList selectNext.].
	super selectNext.
