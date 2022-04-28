testing window type
testWindowTypeDockingBarMock

	| instance |
	instance := ALGFakeWindowType new.
	instance
		closeAllWindowsLikeThis;
		closeAllWindowsButThis.
	self assert: 2 equals: instance mockedDockingBar calls size.
	instance mockedDockingBar calls values do:
		[ :messageCollection | self assert: 1 equals: messageCollection size ]