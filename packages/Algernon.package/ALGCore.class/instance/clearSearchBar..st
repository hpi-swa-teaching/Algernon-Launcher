events-processing
clearSearchBar: event

	self active 
		ifFalse: [ ^ false].
	self query: ''.
	self updateItemList
	 