matching
computeScore: anItem given: aQueryString
 	"A bigger Rank is better" 
	| score |
	anItem isRelevantForAllStrings ifTrue: [ ^ self class defaultScore ].
	score := ALGFuzzyScoreAlgorithm scoreBetween: aQueryString and: anItem fuzzyMatchName.
	score ifNil: [ ^ nil ].
	^ score negated