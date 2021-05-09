event handling
mouseEnter: evt
	self menuMorph selectedItem: self.
	evt hand showTemporaryCursor:nil.