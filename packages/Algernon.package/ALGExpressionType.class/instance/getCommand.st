actions
getCommand
	| textFieldContents startIndex |
	textFieldContents := self typeObject topmostQuery.
	startIndex := 1.
	(textFieldContents beginsWith: '=')
		ifTrue: [ startIndex := 2 ].
	(textFieldContents beginsWith: 'do')
		ifTrue: [ startIndex := 3 ].
		
	^ textFieldContents copyFrom: startIndex to: textFieldContents size