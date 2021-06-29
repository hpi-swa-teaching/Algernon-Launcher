testing
testTabExecutesSingleActionResult

	| browserCount browsers |
	
	ALGCore executeOnTab: true.
	
	browserCount := (self findSystemWindowsByLabel: 'Preference Browser') size.

	self 
		runQuery: 'Preferences';
		keyTab.
			
	browsers := self findSystemWindowsByLabel: 'Preference Browser'.
	self assert: browsers size > browserCount