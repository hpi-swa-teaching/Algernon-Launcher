testing expressions
testExpressionPrintByDefault
	| expressionItem |
	self runQuery: '= 1+1'.
	expressionItem := self items first.
	self assert: expressionItem algerType typeName = 'Expression'.
	expressionItem defaultAlgeraction do.
	self assert: (self findNewSystemWindowsByLabel: 'Transcript' old:  {} ) size = 1.