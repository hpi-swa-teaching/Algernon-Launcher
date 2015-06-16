adding
addCategory: anAlgercat

	self algernonListItems add: anAlgercat title.
	self add: anAlgercat title
		target: nil
		selector: nil
		argumentList: {}.
	self items last isEnabled: false.
	typeList addItem: ''