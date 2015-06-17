accessing
cachedResults
	cachedResults ifNil: [self cachedResults: Dictionary new].
	^ cachedResults