matching
computeScore: anItem given: aStringCollection
 	"A bigger Rank is better" 

	| score query |
	query := aStringCollection joinSeparatedBy: ' '.
	score := ALGFuzzyScoreAlgorithm scoreBetween: anItem fuzzyMatchName and: query.
	^ score negated