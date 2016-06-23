categorizing
countCategoriesFrom: anItemCollection

	| maxIndex aDictionary |
	maxIndex := self class maxNumItems.
	(anItemCollection size < maxIndex) ifTrue: [ maxIndex := anItemCollection size ].
	aDictionary := self typesFrom: anItemCollection withMaximum: maxIndex. 
	^ aDictionary keys size