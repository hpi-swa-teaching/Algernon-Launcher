accessors
algertypeRank: aLowercaseString

	^ (self methodContent asLowercase findTokens: aLowercaseString) size.