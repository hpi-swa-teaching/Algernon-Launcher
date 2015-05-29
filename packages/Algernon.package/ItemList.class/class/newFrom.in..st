instance creation
newFrom: aDictionary in: anAlgernon
	"Constructs an ItemList from a dictionary of Algertem collections indexed
	by their Algertype."
	| anItemList |
	anItemList := self new.
	anItemList algernon: anAlgernon.
	aDictionary copy keysDo: [ :key |
		| categoryList |
		categoryList := aDictionary at: key.
		anItemList addCategory: categoryList first algertype typeName.
		((categoryList size > self maxItemsPerCategory)
			ifTrue: [ categoryList
						collect: [ :each | each ]
						from: 1
						to: self maxItemsPerCategory ]
			ifFalse: [ categoryList ]) do: [ :anAlgertem |
			anItemList addToMenu: anAlgertem ]].
	^ anItemList