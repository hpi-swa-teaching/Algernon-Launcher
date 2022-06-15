testing
testGitProjectOpen
	
	self assert:
		[self runQuery: 'Test Working Copy'.
		 self activateCurrentItemAction.
		 World doOneCycle.
		 World doOneCycle]
		opensNewWindow: 'Git Browser: Test Working Copy (master)'