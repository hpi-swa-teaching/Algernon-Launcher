testing expressions
testExpressionDoIt

	| expressionItem oldSystemWindows |
	self runQuery: '= SystemBrowser default open'.
	expressionItem := self items detect: [:each| each algerType typeName = 'Expression'].
	self assert: expressionItem notNil.
	oldSystemWindows := self currentSystemWindows.
	self doActionForItem: expressionItem withName: 'do'.
	self assert: (self findNewSystemWindowsByLabel: 'System Browser' old:  oldSystemWindows) notEmpty.