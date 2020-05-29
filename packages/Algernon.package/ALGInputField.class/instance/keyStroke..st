event handling
keyStroke: event
	"the text field needs the focus to show a cursor,
	but ALGCore handles special movment keys"
	self controller keyStroke: event.