actions
createListOfAlgeractions

	^ self createSortedListFrom: {
		self createActionOpenInGitBrowser.
		self createActionCommit.
		self createActionPush.
		self createActionPull }