caching
finalResultsAt: aCacheKey
	self finalResults at: aCacheKey
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ self emptyResult ]