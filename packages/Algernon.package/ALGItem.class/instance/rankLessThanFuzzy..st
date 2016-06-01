comparison
rankLessThanFuzzy: anItem

	((self rank) + (self fuzzyRank)) > ((anItem rank) + (anItem fuzzyRank)) ifTrue: [^true].
	((self rank) + (self fuzzyRank)) < ((anItem rank) + (anItem fuzzyRank)) ifTrue: [^false].
	^ #equals