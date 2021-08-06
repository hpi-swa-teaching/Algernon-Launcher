filtering
processMatchedItems: anItemCollection given: aString
	| items |
	items :=  anItemCollection first: (anItemCollection size clampHigh: self class maximumItemsToCompute).
	 ^ self sorter sort: items given: aString