testing
testExpressionPrintByDefault

	| expressionItem oldSytemWindows |
	self runQuery: '= 1+1'.
	expressionItem := self items first.
	self assert: expressionItem algerType typeName = 'Expression'.
	oldSytemWindows := self currentSystemWindows.
	expressionItem defaultAlgeraction do.
	self assert: (self findNewSystemWindowsByLabel: 'Transcript' old:  oldSytemWindows) size = 1.