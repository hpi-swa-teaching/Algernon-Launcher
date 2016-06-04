relevance
matches: aLowercaseString

	| matcher isMatch |
	matcher := ALGFuzzyMatcher newFor: self lowerCaseName.
	self flag: #TODO. "why does matches not use computeScore?"
	isMatch := matcher matches: aLowercaseString.
	self matchingPositions: matcher matchingPositions.
	^ isMatch