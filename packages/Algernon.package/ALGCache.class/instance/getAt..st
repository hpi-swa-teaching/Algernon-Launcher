caching
getAt: aTerm

	self itemsCache at: aTerm
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ self emptyResult ]