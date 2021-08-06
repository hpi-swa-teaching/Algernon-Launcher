testing expressions
testExpressionDoNoTranscript
	| expressionItem |
	
	self runQuery: 'do 1+1'.
	expressionItem := self items first.
	self assert: 'Expression' equals: expressionItem algerType typeName.
	self deny: [expressionItem defaultAlgeraction do] opensNewWindow: 'Transcript'