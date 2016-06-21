actions
createListOfAlgeractions

	| aCategory |
	aCategory := self typeObject.
	^ self createSortedListFrom: {
		self createActionBrowseExistingFor: aCategory.
		self createActionBrowseNewFor: aCategory.
		self createActionFileoutFor: aCategory }