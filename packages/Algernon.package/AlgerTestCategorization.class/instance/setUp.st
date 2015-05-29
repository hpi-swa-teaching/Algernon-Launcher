running
setUp

	super setUp.
	algertemList := OrderedCollection newFrom: {
		ClassAlgertype new.
		ClassAlgertype new.
		GlobalVariableAlgertype new }.
	^ nil