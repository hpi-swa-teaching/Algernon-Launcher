caching
get: aCacheKey

	self at: aCacheKey
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ self emptyResult ]