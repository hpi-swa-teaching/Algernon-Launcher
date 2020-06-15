actions
createListOfAlgeractions

	| aVar |
	aVar := self typeObject.
	^ self createSortedListFrom: { self createActionOpenFor: aVar }
	
