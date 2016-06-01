relevance
matchesFuzzy: aLowercaseString

	| matcher isMatch |
	matcher := ALGOldFuzzyMatcher newFor: self lowerCaseName.
	isMatch := matcher matches: aLowercaseString.
	self matchingPositions: matcher matchingPositions.
	^ isMatch