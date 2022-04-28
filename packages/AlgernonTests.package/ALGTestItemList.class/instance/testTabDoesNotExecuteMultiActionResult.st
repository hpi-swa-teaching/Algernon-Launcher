testing
testTabDoesNotExecuteMultiActionResult
	
	self 
		deny: [self runQuery: 'ALGIconFactory'; keyTab]
		opensNewWindow: 'System Browser'