testing
testClassAction
	| oldBrowsers newBrowser |
	self runQuery: 'ALGCore'.
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Class' ]).
	[self algerInstance currentItem algerType typeName = 'Class'] whileFalse:  [self algerInstance selectNext].

	oldBrowsers := self findPluggableSystemWindowsByLabel: 'System Browser'.
	
	self activateCurrentItemAction.
	
	newBrowser := (self findNewPluggableSystemWindowsByLabel: 'System Browser' old: oldBrowsers) first.
	
	self assert: (newBrowser label includesSubstring: 'ALGCore').

	self deleteNewPluggableSystemWindowsByLabel: 'System Browser' old: oldBrowsers.