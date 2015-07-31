initialization
initializeInputField

	| helper |
	self textField: self createInputField.
	helper := self createInputHelper.
	helper addMorph: self textField.
	self addMorph: helper