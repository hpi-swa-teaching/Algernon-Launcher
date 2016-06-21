actions
createListOfAlgeractions

	| aPackage |
	aPackage := self typeObject.
	^ self createSortedListFrom: { self createActionBrowseFor: aPackage }