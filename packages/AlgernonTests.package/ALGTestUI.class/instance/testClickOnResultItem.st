testing
testClickOnResultItem
	| position newBrowser oldBrowsers |
	self runQuery: 'ALGCore'.
	position := self algInstance itemList submorphs second bounds center.
	oldBrowsers := self findSystemWindowsByLabel: 'System Browser'.
	self dispatchMouseEvent: #mouseDown atPosition: position.
	newBrowser := (self findNewSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	self
		assert: (newBrowser label includesSubstring: 'ALGCore')