system
registerWithSystem

	self activeHand addKeyboardListener: self.
	self
		registerNotifierFor: #class;
		registerNotifierFor: #protocol;
		registerNotifierFor: #category;
		registerNotifierFor: #method

	
	