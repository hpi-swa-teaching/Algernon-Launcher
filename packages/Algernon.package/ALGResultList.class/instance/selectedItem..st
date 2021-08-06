accessing
selectedItem: aMorph
	self selectedItem ifNotNil: [self selectedItem deselect].
	selectedItem := aMorph.
	self ensureVisible: aMorph.
	self selectedItem ifNotNil: [self selectedItem select].