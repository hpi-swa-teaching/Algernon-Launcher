testing
testClassAction
	| oldBrowsers newBrowser |
	self runQuery: 'ALGCore'.
	self moveCursorTo: 'Class'.

	oldBrowsers := self findPluggableSystemWindowsByLabel: 'System Browser'.
	
	self activateCurrentItemAction.
	
	newBrowser := (self findNewPluggableSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	
	self assert: (newBrowser label includesSubstring: 'ALGCore').

	self deleteNewPluggableSystemWindowsByLabel: 'System Browser' old: oldBrowsers.