testing
testTestAction
	| oldTestRunners |
	self runQuery: 'ALGFakeTest'.
	self moveCursorTo: 'Test'.

	oldTestRunners := self findSystemWindowsByLabel: 'Test Runner'.
	
	ALGFakeTest wasRun: false.
	self activateCurrentItemAction.
	self assert: ALGFakeTest wasRun.

	self deleteNewSystemWindowsByLabel: 'Test Runner' old: oldTestRunners.