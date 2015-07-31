actions
createListOfAlgeractions

	| aClass |
	aClass := self typeObject.
	^ self createSortedListFrom: {
		self createActionBrowseExistingFor: aClass;
			createActionBrowseNewFor: aClass;
			createActionFileoutFor: aClass;
			createActionPrintoutFor: aClass;
			createActionExploreFor: aClass;
			createActionInspectFor: aClass }