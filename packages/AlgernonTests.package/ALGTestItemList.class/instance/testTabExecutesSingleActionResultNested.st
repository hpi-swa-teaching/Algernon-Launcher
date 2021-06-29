testing
testTabExecutesSingleActionResultNested

	| browserCount browsers |
	
	ALGCore executeOnTab: true.
	
	browserCount := (self findSystemWindowsByLabel: 'System Browser') size.

	self
		runQuery: 'BaselineOfAlgernon';
		keyTab;
		runQuery: 'postLoad';
		keyTab;
		runQuery: 'browse(new)';
		keyTab.
					
	browsers := self findSystemWindowsByLabel: 'System Browser'.
	self assert: browsers size > browserCount