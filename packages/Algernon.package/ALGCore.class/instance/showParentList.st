updating
showParentList

	self searchStack ifEmpty: [ ^ self ].
	self breadcrumbs pop.
	self textField clear.
	self textField contents: self searchStack pop.
	self parentStack pop.
	self itemProvider searchLevel: self searchStack size.
	(self parentStack size > 0) ifTrue: [ self itemProvider parentItem: self parentStack top ].
	self updateItemList