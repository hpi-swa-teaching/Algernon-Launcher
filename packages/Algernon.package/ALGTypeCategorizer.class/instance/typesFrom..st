categorizing
typesFrom: anItemCollection

	| maxIndex aDictionary |
	aDictionary := Dictionary new.
	maxIndex := self class maxNumItems - (self countCategoriesFrom: anItemCollection).
	(anItemCollection size < maxIndex) ifTrue: [ maxIndex := anItemCollection size ].
	 ^ self typesFrom: anItemCollection withMaximum: maxIndex