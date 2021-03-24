event handling
doActionOnSelectedItem: evt
	evt ifNotNil: [self controller deactivate: evt hand].
	self selectedItem
		ifNotNil: [self selectedListItem incrementNumTimesSelected.
				 self selectedListItem defaultAlgeraction do]