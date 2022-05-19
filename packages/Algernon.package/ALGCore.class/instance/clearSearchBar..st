events-processing
clearSearchBar: event

	self active 
		ifTrue: [
					self query: ''.
					self updateItemList.]
	 