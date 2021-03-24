adding
addAll: anCollection 
	self items addAll: anCollection.
	self rank: self rank
			+ (anCollection
					detectSum: [:each | each rank]).
	^ anCollection