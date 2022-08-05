actions
getSearchString

	| textFieldContents startIndex |
	
	textFieldContents := self typeObject topmostQuery.
	startIndex := 1.
	(textFieldContents beginsWith: 'web ')
		ifTrue: [ startIndex := 5 ].
		
	^ (textFieldContents copyFrom: startIndex to: textFieldContents size) asString