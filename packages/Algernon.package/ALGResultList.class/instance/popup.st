drawing
popup
	| x y |
	x := self algernon center x - (self width / 2).
	y := self algernon bottom + self class verticalOffset.
	self
		popUpAt: x @ y
		forHand: self algernon activeHand
		in: self algernon
		allowKeyboard: false