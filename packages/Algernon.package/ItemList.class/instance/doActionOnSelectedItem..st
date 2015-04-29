actions
doActionOnSelectedItem: evt 
	
	"comment stating purpose of message"
	"if it has a submenu open, do the selected submenu action,
	else do its action"
	actionList ifNotNil:[ 
		actionList hide. "this line is so that action list doesn't delay its hiding'"
		actionList doActionOnSelectedItem: evt.
		self selectedAlgernonListItem incrementNumTimesSelected. 
		^self hideActionList.].
	
	super doActionOnSelectedItem: evt.