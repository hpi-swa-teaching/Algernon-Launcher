event handling
normalKeyStroke: event
	
	"the controller notifies the text field of symbols entered,
	special keys are handled by the controller"
	self editor hasSelection ifTrue: [^super keyStroke: event].
	super keyStroke: event.
	World doOneCycle.
	self changed: #normalKeystroke.

	
