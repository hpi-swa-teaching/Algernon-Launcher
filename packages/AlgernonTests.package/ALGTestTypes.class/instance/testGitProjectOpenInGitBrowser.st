testing git project type
testGitProjectOpenInGitBrowser
	
	Transcript show: SquotWorkingCopy registered.
	Transcript show: (Algernon currentInstance).
	self assert:
		[self runQuery: 'Test Working Copy'.
		 self activateCurrentItemAction.
		 World doOneCycle.
		 World doOneCycle]
		opensNewWindow: 'Git Browser: Test Working Copy (master)'