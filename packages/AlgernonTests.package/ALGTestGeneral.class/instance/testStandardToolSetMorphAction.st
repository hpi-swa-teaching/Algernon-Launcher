testing interaction with tools
testStandardToolSetMorphAction
	| oldProcessBrowsers oldProcessBrowserNumber |
	self runQuery: 'Process Browser' withCursorAt: 'StandardToolSetMorph'.
	oldProcessBrowsers := self findSystemWindowsByLabel: 'Process Browser'.
	oldProcessBrowserNumber := ProcessBrowser allInstances size.
	self activateCurrentItemAction.
	self assert: ProcessBrowser allInstances size equals: oldProcessBrowserNumber + 1.
	self deleteNewSystemWindowsByLabel: 'Process Browser' old: oldProcessBrowsers