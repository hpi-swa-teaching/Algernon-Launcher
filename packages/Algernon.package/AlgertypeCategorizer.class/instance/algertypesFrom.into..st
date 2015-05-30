categorizing
algertypesFrom: anAlgertemList into: aDictionary
	"Extracts a dictionary of categories from a given list indexed by their Algertype."
	| maxIndex |
	maxIndex := self class maxNumItems - self class maxNumTopResults.
	(anAlgertemList size < maxIndex)
		ifTrue: [ maxIndex := anAlgertemList size ].
	(1 to: maxIndex) do: [ :i |
		| anAlgertem key categoryItems |
		anAlgertem := anAlgertemList at: i.
		key := anAlgertem algertype typeName.
		aDictionary
			at: key
			ifAbsentPut: [ OrderedCollection new ].
		categoryItems := aDictionary at: key.
		(categoryItems size >= self class maxItemsPerCategory)
			ifFalse: [ categoryItems add: anAlgertem ]].
	^ aDictionary