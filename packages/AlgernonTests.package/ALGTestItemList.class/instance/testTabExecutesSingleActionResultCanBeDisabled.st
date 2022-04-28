testing
testTabExecutesSingleActionResultCanBeDisabled
	
	ALGCore executeOnTab: false.
	
	self 
		deny: [self runQuery: 'Preferences'; keyTab]
		opensNewWindow: 'Preference Browser'