actions
addCategory: aString

	self algernonListItems add: aString.
	self add: aString
		target: nil
		selector: nil
		argumentList: {}.
	self items last isEnabled: false.
	typeList addItem: ''