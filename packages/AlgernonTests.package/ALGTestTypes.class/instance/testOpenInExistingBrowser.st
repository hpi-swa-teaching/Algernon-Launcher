testing
testOpenInExistingBrowser
	| browser classType |
	browser := SystemBrowser default open.
	classType := (ALGClassType new typeObject: ALGCore).
	classType openInExistingBrowser: (classType typeObject).
	self assert: (browser selectedClassName = #ALGCore).