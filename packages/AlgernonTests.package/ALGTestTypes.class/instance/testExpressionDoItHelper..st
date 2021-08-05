testing expressions
testExpressionDoItHelper: anExpression
	| expressionItem |

	self runQuery: anExpression.
 	expressionItem := self items detect: [:each| each algerType typeName = 'Expression'].
	self assert: expressionItem notNil.
	self assert: [self doActionForItem: expressionItem withName: 'do']
		 opensNewWindow: 'System Browser'