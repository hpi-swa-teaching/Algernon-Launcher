testing
testCommandsArePlatformDependent

	ALGOSProcess := ALGFakeOSProcess new.

	self 
		runQuery: 'web Algernon';
		activateCurrentItemAction;
		activateCurrentItemAction.
	
	ALGOSProcess commandHistory removeAllSuchThat: [:command | 
		ALGWebResultType unixOpenBrowserCommands anySatisfy: [:each | 
			command beginsWith: each]].
	
	self assert: ALGOSProcess commandHistory isEmpty