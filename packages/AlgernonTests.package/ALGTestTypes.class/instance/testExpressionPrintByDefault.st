testing expressions
testExpressionPrintByDefault
	| expressionItem |
	self runQuery: '= 1+1'.
	expressionItem := self items first.
	self assert: 'Expression' equals: expressionItem algerType typeName.
	self assert: [expressionItem defaultAlgeraction do] opensNewWindow: 'Transcript'