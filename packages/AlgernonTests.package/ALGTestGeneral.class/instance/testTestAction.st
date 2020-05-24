testing
testTestAction
	| oldTestRunners |
	self runQuery: 'ALGFakeTest'.
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Test' ]).
	[self algerInstance currentItem algerType typeName = 'Test'] whileFalse:  [self algerInstance selectNext].

	oldTestRunners := self findPluggableSystemWindowsByLabel: 'Test Runner'.
	
	ALGFakeTest wasRun: false.
	self activateCurrentItemAction.
	self assert: ALGFakeTest wasRun.

	self deleteNewPluggableSystemWindowsByLabel: 'Test Runner' old: oldTestRunners.