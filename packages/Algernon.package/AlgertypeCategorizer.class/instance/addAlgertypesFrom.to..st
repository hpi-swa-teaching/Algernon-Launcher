categorizing
addAlgertypesFrom: aDictionary to: aCollection

	aDictionary keysDo: [ :key |
		| category algertemList maxIndex |
		category := Algercat newWithTitle: key.
		maxIndex := self class maxItemsPerCategory.
		algertemList := aDictionary at: key.
		(algertemList size < maxIndex)
			ifTrue: [ maxIndex := algertemList size ].
		(1 to: maxIndex) do: [ :i |
			category add: (algertemList at: i) ].
		aCollection add: category ]