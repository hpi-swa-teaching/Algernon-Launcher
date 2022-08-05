actions
createListOfAlgeractions

	^ self createSortedListFrom: {
		self createActionOpen.
		self createActionSwitch }