actions
openLinkOnUnix: aString

	self class unixOpenBrowserCommands do: [:command | 
		((OSProcess waitForCommand: command , aString) succeeded)
			ifTrue: [^ true]].
		
	^ false