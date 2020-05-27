testing
testExpressionWithChildren
	| expressionItem oldSystemWindows |
	self runQuery: '= 1+1'.
	self moveCursorTo: 'Expression'.
	self algerInstance showChildList.
	self runQuery: 'inspect'.
	expressionItem := self items first.
	self
		assert: (expressionItem name includesSubString:  'inspect').
	oldSystemWindows := self currentSystemWindows.
	self doActionForItem: expressionItem.
	self assert: (self findNewSystemWindowsByLabel: 'SmallInteger' old: oldSystemWindows) notNil