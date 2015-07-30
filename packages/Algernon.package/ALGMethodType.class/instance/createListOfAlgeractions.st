actions
createListOfAlgeractions

	| aMethod |
	aMethod := self typeObject.
	^ self createSortedListFrom: {
		self createActionBrowseExistingFor: aMethod.
		self createActionBrowseNewFor: aMethod.
		self createActionSendersFor: aMethod.
		self createActionImplementorsFor: aMethod }