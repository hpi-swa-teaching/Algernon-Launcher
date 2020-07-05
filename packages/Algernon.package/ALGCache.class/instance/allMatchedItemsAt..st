caching
allMatchedItemsAt: aCacheKey
	self allMatchedItems at: aCacheKey
		ifPresent: [ :items | ^ items ]
		ifAbsent: [ ^ self emptyResult ]