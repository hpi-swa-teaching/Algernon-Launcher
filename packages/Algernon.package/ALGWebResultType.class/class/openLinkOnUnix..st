as yet unclassified
openLinkOnUnix: aString

	"Use contains instead of do, because linter told so :) Also it is a bit shorter"
	^ self unixOpenBrowserCommands contains: [:command | 
		((OSProcess waitForCommand: command , aString) succeeded)]