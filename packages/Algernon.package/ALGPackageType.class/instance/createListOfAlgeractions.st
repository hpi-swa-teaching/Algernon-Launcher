actions
createListOfAlgeractions

	| aPackage |
	aPackage := self typeObject.
	^ self createSortedListFrom: {
		self createActionOpenFor: aPackage.
		self createActionBrowseFor: aPackage }