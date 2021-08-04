as yet unclassified
initialize

	self
		mockedDockingBar: (ALGMockedObject newWithMethods: #(
			closeAllWindowsButWorkspaces
			closeAllWindowsUnsafe
			closeAllWindows ));
		mockedWorld: (ALGMockedObject newWithMethods: #(collapseAllWindows))