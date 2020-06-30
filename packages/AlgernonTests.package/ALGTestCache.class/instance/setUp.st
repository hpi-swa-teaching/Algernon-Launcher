accessing
setUp
	cache := ALGCache new.
	self cacheKey: 'testKey'.
	self items: { ALGItem new . ALGItem new }.
	cache at: self cacheKey put: self items.