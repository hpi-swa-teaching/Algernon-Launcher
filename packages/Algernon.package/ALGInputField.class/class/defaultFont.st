constants
defaultFont
	^ (Preferences standardMenuFont textStyle
		ifNil: [TextStyle defaultFont textStyle])
			fontOfPointSize: 30