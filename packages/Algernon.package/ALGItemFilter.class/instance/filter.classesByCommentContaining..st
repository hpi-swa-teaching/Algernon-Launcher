filtering
filter: anItemCollection classesByCommentContaining: aKeyword
	| lowercaseKeyword result |
	aKeyword ifEmpty: [^ OrderedCollection new].
	lowercaseKeyword := aKeyword asLowercase.
	result :=  anItemCollection
		select: [:each | | score |
			score := ALGClassCommentFuzzyMatcher computeScore: each given: aKeyword.
			each classCommentFuzzyRank: score.
			score isNil not ].
	^ self sortByFuzzyRank: result