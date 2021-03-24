computation
computeScore: anItem given: aQueryString
 	"A bigger Rank is better" 
	| score |
	anItem isRelevantForAllStrings ifTrue: [ ^ self defaultScore ].
	score := self scoreBetween: aQueryString and: anItem fuzzyMatchName.
	score ifNil: [ ^ nil ].
	^ score negated