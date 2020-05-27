testing
testTestAction
	| oldTestRunners |
	self runQuery: 'ALGFakeTest'.
	self moveCursorTo: 'Test'.

	oldTestRunners := self findPluggableSystemWindowsByLabel: 'Test Runner'.
	
	ALGFakeTest wasRun: false.
	self activateCurrentItemAction.
	self assert: ALGFakeTest wasRun.

	self deleteNewPluggableSystemWindowsByLabel: 'Test Runner' old: oldTestRunners.