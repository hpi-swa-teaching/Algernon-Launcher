filtering
processMatchedItems: anItemCollection given: aString
	| items |
	items :=  anItemCollection first: (anItemCollection size clampHigh: self class minimumItemsToCompute).
	 ^ self sorter sort: items given: aString