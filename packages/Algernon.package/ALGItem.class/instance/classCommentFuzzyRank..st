accessing
classCommentFuzzyRank: score
	score ifNil: [ ^ self ].
	self fuzzyRank
		ifNil: [ self fuzzyRank: score. ]
		ifNotNil: [ self fuzzyRank: (self  fuzzyRank max: score).] 