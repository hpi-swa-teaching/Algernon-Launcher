actions
createListOfAlgeractions

	| list aClass |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aClass := self typeObject.
	list add: (self createActionBrowseExistingFor: aClass).
	list add: (self createActionBrowseNewFor: aClass).
	list add: (self createActionFileoutFor: aClass).
	list add: (self createActionPrintoutFor: aClass).
	list add: (self createActionExploreFor: aClass).
	list add: (self createActionInspectFor: aClass).
	^ list