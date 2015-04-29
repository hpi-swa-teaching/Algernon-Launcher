event handling
grabFocus: hand

	self 
		oldKeyboardFocus: hand keyboardFocus;
		oldMouseFocus: hand mouseFocus.
	hand 
		newKeyboardFocus: self;
		newMouseFocus: self.