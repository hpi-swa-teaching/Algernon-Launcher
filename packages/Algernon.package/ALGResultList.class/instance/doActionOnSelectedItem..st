event handling
doActionOnSelectedItem: evt

	self selectedListItem incrementNumTimesSelected. 
	self selectedItem invokeWithEvent: evt