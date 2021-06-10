running
tearDown
	
	ALGCore cleanup.
	SystemChangeNotifier doSilently:
		[{'Algernon' . 'AlgernonTests'} do: 
			[:each | (MCPackage named: each) unload]]