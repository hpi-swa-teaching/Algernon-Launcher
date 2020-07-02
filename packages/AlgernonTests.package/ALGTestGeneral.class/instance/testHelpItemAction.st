testing
testHelpItemAction
	| textField |
	self runQuery: 'help fileout'.
	self activateCurrentItemAction. "pressing enter on a help text does not throw"
	self assert: (self algerInstance query = 'fileout ').
	"the user should be able to type after the keyword"
	textField := self algerInstance textField.
	self assert: textField selection size = 0.
	self assert: textField cursor = textField size.
	self algerInstance deactivate.