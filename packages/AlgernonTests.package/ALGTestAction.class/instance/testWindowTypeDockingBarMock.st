testing
testWindowTypeDockingBarMock

	| instance |
	instance := ALGMockedWindowType new.
	instance
		closeAllWindowsLikeThis;
		closeAllWindowsButThis.
	self assert: 2 equals: instance mockedDockingBar calls keys size.
	instance mockedDockingBar calls values do: [ :coll | self assert: 1 equals: coll size ].