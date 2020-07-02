testing
testSelfFocus
	"Make sure Algernon has focus when launched."

	self algerInstance show.
	self assert: self algerInstance textField hasKeyboardFocus.
	self algerInstance hide