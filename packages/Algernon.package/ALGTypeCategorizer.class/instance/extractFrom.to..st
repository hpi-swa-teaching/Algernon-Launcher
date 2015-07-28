categorizing
extractFrom: aDictionary to: aCollection

	aDictionary keysDo: [ :key |
		| category items maxIndex |
		category := ALGCategory newWithTitle: key.
		maxIndex := self class maxItemsPerCategory.
		items := aDictionary at: key.
		(items size < maxIndex)
			ifTrue: [ maxIndex := items size ].
		(1 to: maxIndex) do: [ :i | category add: (items at: i) ].
		aCollection add: category ]