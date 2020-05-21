categorizing
extractFrom: anItemCollection

	| category |
	category := ALGCategory newForTopResults.
	((anItemCollection
		select: [:each | each canBeTopResult ])
		take: self class maxNumTopResults)
		do: [:each | category add: each. ].
	^ category