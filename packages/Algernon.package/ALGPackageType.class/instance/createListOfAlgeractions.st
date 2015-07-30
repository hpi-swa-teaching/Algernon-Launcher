actions
createListOfAlgeractions

	| list aPackage |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aPackage := self typeObject.
	list add: (self createActionOpenFor: aPackage).
	list add: (self createActionBrowseFor: aPackage).
	^ list