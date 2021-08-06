testing expressions
testExpressionWithChildren
	| expressionItem |
	self runQuery: '= 1+1'.
	self moveCursorTo: 'Expression'.
	self algInstance showChildList.
	self runQuery: 'inspect'.
	expressionItem := self items first.
	self assert: (expressionItem name includesSubstring:  'inspect').
	self assert: [expressionItem defaultAlgeraction do] opensNewWindow: 'SmallInteger'