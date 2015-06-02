selection
selectPrevious
	selectedItem contents: (self selectedAlgernonListItem name).
	(actionList isNil not) ifTrue:[^actionList selectPrevious.].
	super selectPrevious.