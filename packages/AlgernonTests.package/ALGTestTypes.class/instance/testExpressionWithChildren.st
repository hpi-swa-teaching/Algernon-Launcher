testing
testExpressionWithChildren
	| expressionItem oldSystemWindows |
	self runQuery: '= 1+1'.
	self moveCursorTo: 'Expression'.
	self algInstance showChildList.
	self runQuery: 'inspect'.
	expressionItem := self items first.
	self assert: (expressionItem name includesSubstring:  'inspect').
	oldSystemWindows := self currentSystemWindows.
	expressionItem defaultAlgeraction do.
	self assert: (self findNewSystemWindowsByLabel: 'SmallInteger' old: oldSystemWindows) notEmpty