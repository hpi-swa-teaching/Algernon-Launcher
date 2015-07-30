caching
getItem: aTerm

	self itemsCache at: aTerm
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ nil ]