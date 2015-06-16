selection
selectNext
	selectedItem contents: (self selectedAlgernonListItem name).
	(actionList isNil not) ifTrue:[^actionList selectNext.].
	super selectNext.
