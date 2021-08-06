actions
getCommand
	| textFieldContents startIndex |
	textFieldContents := self typeObject topmostQuery.
	startIndex := 1.
	(textFieldContents startsWith: '=')
		ifTrue: [ startIndex := 2 ].
	(textFieldContents startsWith: 'do')
		ifTrue: [ startIndex := 3 ].
		
	^ textFieldContents copyFrom: startIndex to: textFieldContents size