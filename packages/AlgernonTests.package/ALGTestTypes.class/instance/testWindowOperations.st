testing window type
testWindowOperations

	| instance |
	instance := ALGFakeWindowOperationsType new.
	instance
		closeAllButWorkspaces;
		closeAllWindows;
		closeWithoutChanges;
		collapseAllWindows.
	self assert: 3 equals: instance mockedDockingBar calls size.
	self assert: 1 equals: instance mockedWorld calls size.
	instance mockedDockingBar calls values do:
		[ :messageCollection | self assert: 1 equals: messageCollection size ].
	instance mockedWorld calls values do:
		[ :messageCollection | self assert: 1 equals: messageCollection size ]