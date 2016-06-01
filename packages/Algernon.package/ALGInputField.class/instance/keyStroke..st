event handling
keyStroke: event

	self editor hasSelection ifTrue: [^super keyStroke: event].
	
	"Move the cursor to the end point to ensure that the cursor is at the end after press left".
	self editor selectFrom: self contents size+1 to: self contents size.
	super keyStroke: event.