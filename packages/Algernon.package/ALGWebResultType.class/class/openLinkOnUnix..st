as yet unclassified
openLinkOnUnix: aString

	| processClass |
	
	processClass := OSProcess.
	ALGOSProcess ifNotNil: [processClass := ALGOSProcess].

	"Use contains instead of do, because linter told so :) Also it is a bit shorter"
	^ self unixOpenBrowserCommands contains: [:command | 
		((processClass waitForCommand: command , aString) succeeded)]