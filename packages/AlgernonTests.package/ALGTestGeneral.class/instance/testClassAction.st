testing interaction with tools
testClassAction
	| oldBrowsers newBrowser |
	self runQuery: 'ALGCore' withCursorAt: 'Class'.
	oldBrowsers := self findSystemWindowsByLabel: 'System Browser'.
	self activateCurrentItemAction.
	newBrowser := (self findNewSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	self assert: (newBrowser label includesSubstring: 'ALGCore')