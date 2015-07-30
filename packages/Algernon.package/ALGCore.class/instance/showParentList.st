updating
showParentList

	| parentSearch |
	(self searchStack size = 0) ifTrue: [ ^ self ].
	parentSearch := self searchStack pop.
	self breadcrumbs pop.
	self textField clear.
	self textField contents: parentSearch.
	self itemProvider searchLevel: self searchStack size.
	self updateItemList