actions
createSortedListFrom: aCollection

	| list |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	list addAll: aCollection.
	^ list