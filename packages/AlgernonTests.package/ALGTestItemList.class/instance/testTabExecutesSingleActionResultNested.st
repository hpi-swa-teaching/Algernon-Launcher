testing
testTabExecutesSingleActionResultNested
	
	self 
		assert: [self runQuery: 'BaselineOfAlgernon';
					 keyTab;
					 runQuery: 'postLoad';
				 	 keyTab;
					 runQuery: 'browse(new)';
					 keyTab                                      ]
		opensNewWindow: 'System Browser'