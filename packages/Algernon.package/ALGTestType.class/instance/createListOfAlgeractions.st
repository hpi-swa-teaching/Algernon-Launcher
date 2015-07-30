actions
createListOfAlgeractions

	| aClass |
	aClass := self typeObject.
	^ self createSortedListFrom: { self createActionRun }