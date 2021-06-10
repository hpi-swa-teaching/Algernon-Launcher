running
tearDown
	
	ALGCore cleanup.
	SystemChangeNotifier uniqueInstance doSilently:
		[{'Algernon' . 'AlgernonTests'} do: 
			[:each | (MCPackage named: each) unload]]