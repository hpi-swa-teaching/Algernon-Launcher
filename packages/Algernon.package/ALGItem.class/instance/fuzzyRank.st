accessing
fuzzyRank
	fuzzyRank ifNil: [ ^ nil ].
	^ fuzzyRank + self rankBonus