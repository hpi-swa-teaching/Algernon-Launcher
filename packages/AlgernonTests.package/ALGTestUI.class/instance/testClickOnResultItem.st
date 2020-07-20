testing
testClickOnResultItem
	| clickEvent hand position newBrowser oldBrowsers |
	self runQuery: 'ALGCore'.
	hand:= self algInstance world activeHand.
	position:= self algInstance itemList submorphs second bounds center.
	clickEvent:=MouseButtonEvent new setType: #mouseDown position: position which: 4 buttons: 4 hand: hand stamp: nil.
	oldBrowsers := self findSystemWindowsByLabel: 'System Browser'.
	self algInstance mouseDown: clickEvent.
	newBrowser := (self findNewSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	self assert: (newBrowser label includesSubstring: 'ALGCore').