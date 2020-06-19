filtering
filter: anItemCollection classesByCommentContaining: aKeyword
	aKeyword ifEmpty: [ ^ OrderedCollection new ].
	^ anItemCollection
		select: [ :each | each matchesComment: aKeyword asLowercase asSymbol ];
		do: [ :each | each fuzzyRank: (self class classCommentFuzzyPenalty) ].