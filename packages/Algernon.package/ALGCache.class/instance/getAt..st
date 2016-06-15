caching
getAt: aCacheKey

	self itemsCache at: aCacheKey
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ self emptyResult ]