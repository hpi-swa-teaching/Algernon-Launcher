testing
testTabExecutesSingleActionResult
	
	self 
		assert: [self runQuery: 'Preferences'; keyTab]
		opensNewWindow: 'Preference Browser'