filtering
processMatchedItems: anItemCollection given: aString
	| items |
	items :=  anItemCollection first: (self class minimumItemsToCompute min: anItemCollection size).
	 ^ self sorter sort: anItemCollection given: aString.