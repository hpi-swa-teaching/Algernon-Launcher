filtering
filter: anItemCollection classesByCommentContaining: aKeyword
	| lowercaseKeyword result |
	aKeyword ifEmpty: [^ OrderedCollection new].
	lowercaseKeyword := aKeyword asLowercase.
	result :=  anItemCollection
		select: [:each | | score |
			score := ALGFuzzyMatcher computeClassCommentScore: each given: aKeyword.
			each fuzzyRank ifNil: [ each fuzzyRank: score. ].
			score isNil not ].
	^ self sortByFuzzyRank: result.