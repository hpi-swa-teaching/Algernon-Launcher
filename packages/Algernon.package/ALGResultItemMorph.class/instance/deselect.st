event handling
deselect
	self selected: false.
	self color: self class normalFillStyle.

	self hasChildrenMorph hide.
	self actionMorph hide.