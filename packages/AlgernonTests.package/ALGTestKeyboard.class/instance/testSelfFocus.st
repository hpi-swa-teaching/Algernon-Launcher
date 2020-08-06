testing
testSelfFocus
	"Make sure Algernon has focus when launched."
	self algInstance show.
	self assert: self algInstance textField hasKeyboardFocus.
	self algInstance hide