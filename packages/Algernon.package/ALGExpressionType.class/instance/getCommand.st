actions
getCommand
	| textFieldContents |
	textFieldContents := self typeObject topmostQuery.

	^ textFieldContents copyFrom: 3 to: textFieldContents size"first 2 characters are do or '= '"