singleton
getInstance

	iconFactory ifNil: [iconFactory := ALGIconFactory new].
	^ iconFactory