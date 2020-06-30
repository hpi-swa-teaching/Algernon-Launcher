caching
at: aCacheKey

	super at: aCacheKey
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ self emptyResult ]