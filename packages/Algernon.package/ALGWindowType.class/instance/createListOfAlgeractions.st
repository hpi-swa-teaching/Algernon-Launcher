actions
createListOfAlgeractions

	^ self createSortedListFrom: { 
		self createActionBringToFront . 
		self createActionExpand .
		self createActionContract .
		self createActionCollapse .
		self createActionClose .
		self createActionCloseAllLikeThis .
		self createActionCloseAllButThis }