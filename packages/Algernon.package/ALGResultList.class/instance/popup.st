drawing
popup

	| x y |
	x := self controller center x - (self width / 2).
	y := self controller bottom + self class verticalOffset.
	self
		popUpAt: x @ y
		forHand: self controller activeHand
		in: self controller
		allowKeyboard: false;
		initializePosition.