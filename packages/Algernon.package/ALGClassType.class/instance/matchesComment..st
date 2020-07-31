accessing
matchesComment: aString
	^ (ALGFuzzyMatcher scoreBetween: aString and: self comment) isNil not