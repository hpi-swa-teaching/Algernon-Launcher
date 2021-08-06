testing window type
testWindowOperationsTypeInterfaces

	| instance |
	instance := ALGWindowOperationsType new.
	#(closeAllWindowsButWorkspaces closeAllWindowsUnsafe closeAllWindows)
		do: [ :symbol | self assert: (instance dockingBar class canUnderstand: symbol)].
	self assert: (instance world class canUnderstand: #collapseAllWindows)