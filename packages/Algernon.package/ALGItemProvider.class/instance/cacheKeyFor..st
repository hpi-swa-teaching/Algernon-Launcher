filtering
cacheKeyFor: aString
	 ^ self cache keyFor: (aString asLowercase) level: self searchLevel parent: self parentItem