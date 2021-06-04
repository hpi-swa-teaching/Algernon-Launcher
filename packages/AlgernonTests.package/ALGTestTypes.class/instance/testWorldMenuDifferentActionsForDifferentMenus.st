testing world menu types
testWorldMenuDifferentActionsForDifferentMenus

	self testItemActionName: 'Transcript clear' equals: 'do'.
	self testItemActionName: 'File List' equals: 'open'.
	self testItemActionName: 'http proxy editor' equals: 'open'.
	self testItemActionName: 'Squeak Swiki' equals: 'help'.
	self testItemActionName: 'Save' equals: 'run'.
	self testItemActionName: 'RecoverChanges' equals: 'open'.
	self testItemActionName: 'CreateMVCProject' equals: 'do'