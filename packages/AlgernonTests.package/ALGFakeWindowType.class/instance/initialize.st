initialize-release
initialize

	self mockedDockingBar: (
		ALGMockedObject newWithMethods: #(
			closeAllWindowsBut:
			closeAllWindowsLike: ))