matching
computeScore: anItem given: aQueryString
 	"A bigger Rank is better" 
	| score |
	score := ALGFuzzyScoreAlgorithm scoreBetween: aQueryString and: anItem fuzzyMatchName.
	score ifNil: [ ^ nil ].
	^ score negated