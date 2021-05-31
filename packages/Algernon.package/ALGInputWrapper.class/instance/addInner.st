accessing
addInner

	self inputfield: ALGInputField new.
	self inputfield addDependent: self.
	self scroller addMorph: self inputfield.
	self inputfield color: (Color green).