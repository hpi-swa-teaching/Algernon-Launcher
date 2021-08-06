preferences
setKeyboardBindingDoubleclick
	<preference: 'Require keyboard binding double click?'
		category: #Algernon
		description: 'Do you have to double click the keyboard binding?'
		type: #Boolean>
		
		^ self activationStringDoubleclick ifNil: [true]