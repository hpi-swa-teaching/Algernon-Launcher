event handling
doActionOnSelectedItem: evt
	self selectedItem
		ifNil: [self deactivateController: evt]
		ifNotNil: [self selectedListItem defaultAlgeraction keepOpen 
				ifFalse: [self deactivateController: evt].
			self selectedListItem incrementNumTimesSelected.
			self selectedListItem defaultAlgeraction do]