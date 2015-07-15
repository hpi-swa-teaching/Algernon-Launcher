event handling
doActionOnSelectedItem: evt 
	self selectedItem
		ifNotNil: [self selectedListItem incrementNumTimesSelected. 
				self selectedItem invokeWithEvent: evt]