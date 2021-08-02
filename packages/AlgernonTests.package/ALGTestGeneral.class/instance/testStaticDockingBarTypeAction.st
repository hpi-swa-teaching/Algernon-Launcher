testing interaction with tools
testStaticDockingBarTypeAction
	| oldProcessBrowsers oldProcessBrowserNumber |
	self runQuery: 'Process Browser' withCursorAt: 'Docking Bar Item'.
	oldProcessBrowsers := self findSystemWindowsByLabel: 'Process Browser'.
	oldProcessBrowserNumber := ProcessBrowser allInstances size.
	self activateCurrentItemAction.
	self assert: ProcessBrowser allInstances size equals: oldProcessBrowserNumber + 1.
	self deleteNewSystemWindowsByLabel: 'Process Browser' old: oldProcessBrowsers