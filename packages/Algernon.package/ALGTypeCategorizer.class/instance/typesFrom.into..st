categorizing
typesFrom: anItemCollection into: aDictionary
	"Extracts a dictionary of categories from a given list indexed by their type."

	| maxIndex |
	maxIndex := self class maxNumItems.
	(anItemCollection size < maxIndex)
		ifTrue: [ maxIndex := anItemCollection size ].
	(1 to: maxIndex) do: [ :i |
		| item key categories |
		item := anItemCollection at: i.
		key := item algertype typeName.
		aDictionary at: key ifAbsentPut: [ OrderedCollection new ].
		categories := aDictionary at: key.
		(categories size >= self class maxItemsPerCategory)
			ifFalse: [ categories add: item ]].
	^ aDictionary