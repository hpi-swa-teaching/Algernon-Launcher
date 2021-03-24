testing interaction with tools
testTestAction
	| oldTestRunners |
	self runQuery: 'ALGFakeTest' withCursorAt: 'Test'.
	oldTestRunners := self findSystemWindowsByLabel: 'Test Runner'.
	ALGFakeTest wasRun: false.
	self activateCurrentItemAction.
	self assert: ALGFakeTest wasRun.
	self deleteNewSystemWindowsByLabel: 'Test Runner' old: oldTestRunners