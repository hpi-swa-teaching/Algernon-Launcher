testing world menu types
testWorldMenuSameActionsForSameMenu

	self testItemActionName: 'Transcript clear' equals: 'do'.
	self testItemActionName: 'Utilities emergencyCollapse' equals: 'do'