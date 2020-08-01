testing interaction with tools
testStandardToolSetMorphAction
	| oldProcessBrowsers oldProcessBrowserNumber |
	self runQuery: 'Process Browser'.
	self moveCursorTo: 'StandardToolSetMorph'.
	oldProcessBrowsers := self findSystemWindowsByLabel: 'Process Browser'.
	oldProcessBrowserNumber := ProcessBrowser allInstances size.
	self activateCurrentItemAction.
	self assert: ProcessBrowser allInstances size = (oldProcessBrowserNumber + 1).
	self deleteNewSystemWindowsByLabel: 'Process Browser' old: oldProcessBrowsers