actions
doActionOnSelectedItem: evt 
	
	"comment stating purpose of message"
	"if it has a submenu open, do the selected submenu action,
	else do its action"
	selectedItem
		ifNotNil: [
			self selectedAlgernonListItem incrementNumTimesSelected. 
			selectedItem invokeWithEvent: evt]