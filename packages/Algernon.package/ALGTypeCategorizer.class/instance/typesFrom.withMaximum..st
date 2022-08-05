categorizing
typesFrom: anItemCollection withMaximum: maxNumItems

	| aDictionary item categories |
	
	aDictionary := Dictionary new.
	1 to: maxNumItems do: [:i | 
			item := anItemCollection at: i.
			categories := aDictionary
						at: item algerType typeName
						ifAbsentPut: [OrderedCollection new].
			(categories size >= (self maxItemsPerCategoryFor: (item algerType)))
				ifFalse: [categories add: item]].
	^ aDictionary