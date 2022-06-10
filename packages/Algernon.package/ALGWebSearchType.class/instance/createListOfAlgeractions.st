actions
createListOfAlgeractions

	Transcript show: 'CREATED ACTIONS!'.
	Transcript cr.
	
	^ self createSortedListFrom: {
		self createActionRefresh.}