testing world menu types
testOpenMenuEntry: menuEntry 
	| results newBrowser oldBrowsers |
	self runQuery: 'open ' , menuEntry.
	results := self items select: [:each | each name = menuEntry
					and: [each algerType typeName = 'World Menu Item']].
	self assert: results notEmpty.
	oldBrowsers := self findSystemWindowsByLabel: menuEntry.
	self doActionForItem: results first.
	newBrowser := self findNewSystemWindowsByLabel: menuEntry old: oldBrowsers.
	self assert: newBrowser notEmpty