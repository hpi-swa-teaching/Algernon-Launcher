categorizing
typesFrom: anItemCollection withMaximum: maxNumItems

	| aDictionary |
	aDictionary := Dictionary new.
	1 to: maxNumItems do: [ :i | | item key categories |
		item := anItemCollection at: i.
		key := item algerType typeName.
		aDictionary at: key ifAbsentPut: [ OrderedCollection new ].
		categories := aDictionary at: key.
		(categories size >= self class maxItemsPerCategory)
			ifFalse: [ categories add: item ]].
	^ aDictionary