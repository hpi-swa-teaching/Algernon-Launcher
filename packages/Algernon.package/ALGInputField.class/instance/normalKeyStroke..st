event handling
normalKeyStroke: event
	"the controller notifies the text field of symbols entered,
	special keys are handled by the controller"
	self editor hasSelection ifTrue: [^super keyStroke: event].
	
	"Move the cursor to the end point to ensure that the cursor is at the end after press left".
	self editor selectFrom: self contents size+1 to: self contents size.
	super keyStroke: event.
	
	"this needs to be set after ALGCore is completely initialized,
	because it needs the bounds. That's why this is not in
	initialize"
	self paragraph caretColor: (self class cursorColor).