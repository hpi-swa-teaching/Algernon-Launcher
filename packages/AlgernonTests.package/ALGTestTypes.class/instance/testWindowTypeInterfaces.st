testing window type
testWindowTypeInterfaces

	| instance |
	instance := ALGWindowType new.
	#(closeAllWindowsBut: closeAllWindowsLike:)
		do: [ :symbol | self assert: (instance dockingBar class canUnderstand: symbol)]