comparison
rankLessThan: anItem

	^((self rank) + (self fuzzyRank)) > ((anItem rank) + (anItem fuzzyRank))