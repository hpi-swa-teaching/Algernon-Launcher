initialization
initializeInputField

	self
		textField: (ALGInputWrapper
			newForController: self
			extent:  (self class defaultWidth - 10) @ 40
			center: self center);
		addMorph: self textField