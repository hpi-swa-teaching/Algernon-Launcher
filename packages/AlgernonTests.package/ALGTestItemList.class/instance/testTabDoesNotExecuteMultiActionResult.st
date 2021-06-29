testing
testTabDoesNotExecuteMultiActionResult

	| browserCount browsers |
	
	ALGCore executeOnTab: true.
	
	browserCount := (self findSystemWindowsByLabel: 'System Browser') size.

	self 
		runQuery: 'ALGIconFactory';
		keyTab.
			
	browsers := self findSystemWindowsByLabel: 'System Browser'.
	self assert: browsers size = browserCount