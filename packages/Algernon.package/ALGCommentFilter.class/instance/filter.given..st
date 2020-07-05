filtering
filter: anItemCollection given: aStringCollection

	| commentKeyWord |
	commentKeyWord := aStringCollection second.
	^ anItemCollection
		select: [ :each | each matchesComment: commentKeyWord ]
		thenDo: [ :each | each fuzzyRank: self class classCommentFuzzyPenalty ]