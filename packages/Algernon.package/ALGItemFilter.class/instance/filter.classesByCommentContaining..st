filtering
filter: anItemCollection classesByCommentContaining: aKeyword
	| result |
	aKeyword ifEmpty: [^ OrderedCollection new].
	result :=  anItemCollection
		select: [:each | | score |
			score := ALGClassCommentFuzzyMatcher computeScore: each given: aKeyword.
			each classCommentFuzzyRank: score.
			score isNil not ].
	^ self sortByFuzzyRank: result