testing
testClassAction
	| oldBrowsers newBrowser |
	self runQuery: 'ALGCore'.
	self moveCursorTo: 'Class'.

	oldBrowsers := self findSystemWindowsByLabel: 'System Browser'.
	
	self activateCurrentItemAction.
	
	newBrowser := (self findNewSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	
	self assert: (newBrowser label includesSubstring: 'ALGCore').

	self deleteNewSystemWindowsByLabel: 'System Browser' old: oldBrowsers.