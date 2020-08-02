accessing
applyClassCommentFuzzyPenalty
	self fuzzyRank
		ifNil: [ self fuzzyRank: self class classCommentFuzzyPenalty ].