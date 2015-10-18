actions
createListOfAlgeractions

	| aClass |
	
	aClass := self typeObject.
	^ self createSortedListFrom: {
		self createActionBrowseExistingFor: aClass .
		self createActionBrowseNewFor: aClass .
		self createActionFileoutFor: aClass .
		self createActionPrintoutFor: aClass .
		self createActionExploreFor: aClass .
		self createActionInspectFor: aClass }