categorizing
extractFrom: anItemCollection

	| category topResults |
	category := ALGCategory newForTopResults.
	topResults := anItemCollection
		select: [:each | each canBeTopResult ].
	(topResults any: (self class maxNumTopResults min: topResults size))
		do: [:each | category add: each. ].
	^ category