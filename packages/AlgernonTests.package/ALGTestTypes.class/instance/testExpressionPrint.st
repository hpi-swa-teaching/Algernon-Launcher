testing expressions
testExpressionPrint

	| expressionItem oldSytemWindows |
	self runQuery: '= 1+1'.
	expressionItem := self items detect: [:each| each algerType typeName = 'Expression'].
	self assert: expressionItem notNil.
	oldSytemWindows := self currentSystemWindows.
	self doActionForItem: expressionItem withName: 'print'.
	self assert: (self findNewSystemWindowsByLabel: 'Transcript' old:  oldSytemWindows) notEmpty.