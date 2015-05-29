categorizing
algertypesFrom: anAlgertemList into: aDictionary
	"Extracts a number of categories from a given list based on the Algertype."
	anAlgertemList do: [ :anAlgertem |
		| key categoryItems |
		key := anAlgertem algertype typeName.
		aDictionary
			at: key
			ifAbsentPut: [ OrderedCollection new ].
		categoryItems := aDictionary at: key.
		(categoryItems size >= self class maxItemsPerCategory)
			ifFalse: [ categoryItems add: anAlgertem ]].
	^ aDictionary