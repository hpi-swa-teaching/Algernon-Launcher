testing
testClickOnInputField
	| event |
	self algerInstance activate.
	event := MouseButtonEvent new.
	event setHand: HandMorph new.
	self algerInstance textField mouseUp: event.
	self assert: (self algerInstance hasKeyboardFocus).
	self algerInstance textField mouseDown: event.
	self deny: self algerInstance active.
	