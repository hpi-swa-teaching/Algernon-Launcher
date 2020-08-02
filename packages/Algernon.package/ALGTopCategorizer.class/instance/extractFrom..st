categorizing
extractFrom: anItemCollection

	| category topResults |
	category := ALGCategory newForTopResults.
	topResults := anItemCollection
		select: [:each | each canBeTopResult ].
	category addAll: (topResults first: (self class maxNumTopResults min: topResults size)).
	^ category