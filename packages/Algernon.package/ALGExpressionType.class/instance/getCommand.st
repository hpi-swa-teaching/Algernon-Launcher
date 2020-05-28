actions
getCommand
	| textFieldContents |
	textFieldContents := self typeObject query.

	^ textFieldContents copyFrom: 3 to: textFieldContents size"first 2 characters are do or '= '"