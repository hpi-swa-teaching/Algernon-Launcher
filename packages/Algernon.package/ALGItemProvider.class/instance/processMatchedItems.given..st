filtering
processMatchedItems: anItemCollection given: aString
	| items |
	anItemCollection do: [:item | 
		Transcript showln: item algerType typeObject name.
	].
	items :=  anItemCollection first: (self class minimumItemsToCompute min: anItemCollection size).
	 ^ self sorter sort: items given: aString