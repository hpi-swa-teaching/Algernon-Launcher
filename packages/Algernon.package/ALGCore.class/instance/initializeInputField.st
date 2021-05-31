initialization
initializeInputField

	| helper |
	self textField: (ALGInputWrapper
		newForController: self
		extent:  (self class defaultWidth - 10) @ 40
		center: self center).
"	self textField: self createInputField."
	"helper := self createInputHelper.
	helper addMorph: self textField.
	self addMorph: helper"
"	self textField
		color: Color transparent;
		extent: (self class defaultWidth - 10) @ 40;
		center: self center;
		borderWidth: 0."
	self addMorph: self textField.