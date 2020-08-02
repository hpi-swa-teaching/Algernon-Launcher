events-processing
dropFocus: hand
	hand
		newKeyboardFocus: self oldKeyboardFocus;
		newMouseFocus: self oldMouseFocus.
	self
		oldKeyboardFocus: nil;
		oldMouseFocus: nil