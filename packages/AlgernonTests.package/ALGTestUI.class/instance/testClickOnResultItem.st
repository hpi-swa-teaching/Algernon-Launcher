testing mouse handling
testClickOnResultItem
	| position newBrowser oldBrowsers |
	self runQuery: 'ALGCore'.
	position := self itemMorphs second bounds center.
	oldBrowsers := self findSystemWindowsByLabel: 'System Browser'.
	self dispatchMouseEvent: #mouseDown atPosition: position.
	newBrowser := (self findNewSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	self
		assert: (newBrowser label includesSubstring: 'ALGCore')