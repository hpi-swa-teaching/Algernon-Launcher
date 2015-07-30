event handling
doActionOnSelectedItem: evt

	self selectedItem ifNotNil: [ self selectedListItem incrementNumTimesSelected.
								evt ifNotNil: [self selectedItem invokeWithEvent: evt] ]