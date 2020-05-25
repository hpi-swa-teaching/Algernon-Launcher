testing
testHelpItemAction
	| openInstance textField |
	self runQuery: 'help fileout'.
	self activateCurrentItemAction. "pressing enter on a help text does not throw"
	openInstance := ALGCore currentInstance.
	self assert: (openInstance query = 'fileout ').
	"the user should be able to type after the keyword"
	textField := openInstance textField.
	self assert: textField selection size = 0.
	self assert: textField cursor = textField size.
	openInstance deactivate.