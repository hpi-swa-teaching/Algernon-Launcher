testing world menu types
testReopenExistingWindow
	| query oldBrowsers newBrowser dynamicResults |
	query := 'ALGCore'.
	self runQuery: query.
	oldBrowsers := self findSystemWindowsByLabel: query.
	self doActionForItem: self items first.
	newBrowser := self findNewSystemWindowsByLabel: query old: oldBrowsers.
		
	self runQuery: query.
	dynamicResults := self items select: [:each | each algerType isKindOf: ALGDynamicWorldMenuType].
	self doActionForItem: dynamicResults first.
	self assert: (self findNewSystemWindowsByLabel: query old: (oldBrowsers, newBrowser)) isEmpty