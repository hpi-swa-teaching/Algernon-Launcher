running
tearDown
	
	ALGCore cleanup.
	{'Algernon' . 'AlgernonTests'} do: 
		[:each | (MCPackage named: each) unload]