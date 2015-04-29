selection
selectPrevious
	(actionList isNil not) ifTrue:[^actionList selectPrevious.].
	super selectPrevious.