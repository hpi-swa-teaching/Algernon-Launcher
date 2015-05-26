running
testSelfFocus
	"Make sure Algernon has focus when launched."
	algerstance show.
	self assert: algerstance hasKeyboardFocus.
	algerstance hide.