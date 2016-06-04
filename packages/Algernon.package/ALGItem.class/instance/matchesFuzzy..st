relevance
matchesFuzzy: aLowercaseString

	| matcher isMatch |
	self flag: #deadCode.
	matcher := ALGOldFuzzyMatcher newFor: self lowerCaseName.
	isMatch := matcher matches: aLowercaseString.
	self matchingPositions: matcher matchingPositions.
	^ isMatch