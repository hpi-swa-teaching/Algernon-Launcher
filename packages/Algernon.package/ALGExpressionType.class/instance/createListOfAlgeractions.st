actions
createListOfAlgeractions

	^ self createSortedListFrom: {
		self createActionPrint.
		self createActionInspect }