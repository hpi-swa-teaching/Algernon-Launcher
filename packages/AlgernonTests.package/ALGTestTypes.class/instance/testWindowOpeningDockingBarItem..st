testing docking bar types
testWindowOpeningDockingBarItem: menuEntry 
	| results newWindows oldWindows |
	self runQuery: 'open ' , menuEntry.
	results := self items select: [:each | each name = menuEntry
					and: [each algerType typeName = 'Docking Bar Item']].
	self assert: results notEmpty.
	oldWindows := self findSystemWindowsByLabel: menuEntry.
	self doActionForItem: results first.
	newWindows := self findNewSystemWindowsByLabel: menuEntry old: oldWindows.
	self assert: newWindows notEmpty