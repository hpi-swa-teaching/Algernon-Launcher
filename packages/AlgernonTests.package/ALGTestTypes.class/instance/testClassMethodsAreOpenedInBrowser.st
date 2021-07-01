testing method type
testClassMethodsAreOpenedInBrowser
	| oldBrowsers newBrowser |
	self runQuery: 'ALGCore' withCursorAt: 'Class'.
	self algInstance showChildList.
	self runQuery: 'cleanup'.
	oldBrowsers := self findSystemWindowsByLabel: 'System Browser: ALGCore'.
	self doActionForItem: self items first.
	newBrowser := self findNewSystemWindowsByLabel: 'System Browser: ALGCore' old: oldBrowsers.
	self assert: newBrowser notEmpty