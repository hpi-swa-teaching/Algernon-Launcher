initialization
addInnerForController: aController

	self inputfield: (ALGInputField new
		controller: aController;
		addDependent: self;
		yourself).
	self scroller addMorph: self inputfield