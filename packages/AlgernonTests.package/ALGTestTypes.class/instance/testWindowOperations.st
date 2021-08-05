testing window type
testWindowOperations

	| instance |
	instance := ALGFakeWindowOperationsType new.
	instance
		closeAllButWorkspaces;
		closeAllWindows;
		closeWithoutChanges;
		collapseAllWindows.
	self assert: 3 equals: instance mockedDockingBar calls keys size.
	self assert: 1 equals: instance mockedWorld calls keys size.
	instance mockedDockingBar calls values do: [ :coll | self assert: 1 equals: coll size ].
	instance mockedWorld calls values do: [ :coll | self assert: 1 equals: coll size ]