actions
createListOfAlgeractions

	| aSetting |
	aSetting := self typeObject.
	^ self createSortedListFrom: { self createActionOpenFor: aSetting }