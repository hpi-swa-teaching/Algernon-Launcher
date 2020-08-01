updating
showParentList
	self searchStack isEmpty ifTrue: [ ^ self ].
	self breadcrumbs pop.
	self textField clear.
	self textField contents: self searchStack pop.
	self moveCursorToEnd.
	self parentStack pop.
	self itemProvider searchLevel: self searchStack size.
	self parentStack isEmpty ifFalse: [ self itemProvider parentItem: self parentStack top ].
	self updateItemList