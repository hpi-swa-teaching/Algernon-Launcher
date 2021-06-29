testing
testTabExecutesSingleActionResultCanBeDisabled

	| browserCount browsers |
	
	ALGCore executeOnTab: false.
	
	browserCount := (self findSystemWindowsByLabel: 'Preference Browser') size.

	self 
		runQuery: 'Preferences';
		keyTab.
			
	browsers := self findSystemWindowsByLabel: 'Preference Browser'.
	self assert: browsers size = browserCount