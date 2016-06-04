matching
computeScore: anItem given: aStringCollection
 	"A bigger Rank is better" 

	| score query |
	query := aStringCollection joinSeparatedBy: ' '.
	score := self scoreAlgorithm scoreBetween: anItem lowerCaseName and: query.
	anItem lowerCaseName = 'algcore' ifTrue: [ Transcript show: query ].
	^ score negated