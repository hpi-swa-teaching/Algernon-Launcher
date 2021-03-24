accessing
selectedItem: anObject
	self selectedItem ifNotNil: [self selectedItem deselect].
	selectedItem := anObject.
	self selectedItem ifNotNil: [self selectedItem select].