testing
testStandardToolSetMorphAction
	| oldProcessBrowsers oldProcessBrowserNumber |
	self runQuery: 'Process Browser'.
	self moveCursorTo: 'StandardToolSetMorph'.

	oldProcessBrowsers := self findPluggableSystemWindowsByLabel: 'Process Browser'.
	oldProcessBrowserNumber := ProcessBrowser allInstances size.
	
	self activateCurrentItemAction.
	self assert: (ProcessBrowser allInstances size = (oldProcessBrowserNumber + 1)).

	self deleteNewPluggableSystemWindowsByLabel: 'Process Browser' old: oldProcessBrowsers.