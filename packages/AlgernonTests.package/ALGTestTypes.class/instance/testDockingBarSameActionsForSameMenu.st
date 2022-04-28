testing docking bar types
testDockingBarSameActionsForSameMenu

	self testItemActionName: 'Transcript clear' equals: 'do'.
	self testItemActionName: 'Utilities emergencyCollapse' equals: 'do'