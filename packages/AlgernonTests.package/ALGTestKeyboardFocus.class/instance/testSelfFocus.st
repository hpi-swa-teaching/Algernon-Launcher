testing
testSelfFocus
	"Make sure Algernon has focus when launched."

	algerInstance show.
	self assert: algerInstance hasKeyboardFocus.
	algerInstance hide