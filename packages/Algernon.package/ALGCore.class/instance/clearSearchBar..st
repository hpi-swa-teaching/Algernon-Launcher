events-processing
clearSearchBar: event

	self active 
		ifTrue: [
					self query: ''.
					self resetFilteringThreshold.
					self isStepping ifFalse: [self startStepping].
					self grabFocus: self activeHand]
	 