relevance
matches: aLowercaseString

	| matcher isMatch |
	matcher := ALGFuzzyMatcher newFor: self lowerCaseName.
	isMatch := matcher matches: aLowercaseString.
	self matchingPositions: matcher matchingPositions.
	^ isMatch