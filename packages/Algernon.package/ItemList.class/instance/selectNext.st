selection
selectNext
	(actionList isNil not) ifTrue:[^actionList selectNext.].
	super selectNext.
