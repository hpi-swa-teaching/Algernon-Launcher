testing expressions
testExpressionPrint
	| expressionItem |
	self runQuery: '= 1+1'.
	expressionItem := self items detect: [:each| each algerType typeName = 'Expression'].
	self assert: expressionItem notNil.
	self assert: [self doActionForItem: expressionItem withName: 'print'] opensNewWindow: 'Transcript'