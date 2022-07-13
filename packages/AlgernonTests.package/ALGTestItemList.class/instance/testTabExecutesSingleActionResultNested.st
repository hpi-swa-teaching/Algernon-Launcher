testing
testTabExecutesSingleActionResultNested
	
	self 
		assert: [self runQuery: 'BaselineOfAlgernon category';
					 keyTab;
					 runQuery: 'postLoad';
				 	 keyTab;
					 runQuery: 'browse(new)';
					 keyTab                                      ]
		opensNewWindow: 'System Browser'