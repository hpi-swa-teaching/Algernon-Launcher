computation
computeScore: anItem given: aQueryString
 	"A bigger Rank is better" 
	| score |
	anItem algerType hasComment ifFalse: [ ^ nil ].
	score := self scoreBetween: aQueryString and: anItem algerType comment.
	score ifNil: [ ^ nil ].
	^ score negated + self classCommentFuzzyPenalty.