testing
testExpressionInspect

	| expressionItem oldSystemWindows |
	self runQuery: '= 1+1 '.
	expressionItem := self items detect: [:each| each algerType typeName = 'Expression'].
	self assert: expressionItem notNil.
	oldSystemWindows := self currentSystemWindows.
	self doActionForItem: expressionItem withName: 'inspect'.
	self assert: (self findNewSystemWindowsByLabel: 'SmallInteger' old:  oldSystemWindows) notNil.
