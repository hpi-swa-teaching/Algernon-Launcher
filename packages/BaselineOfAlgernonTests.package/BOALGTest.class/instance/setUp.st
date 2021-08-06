running
setUp
	
	self timeout: 60.
	self metacelloInstance: (
		Metacello new
	   	 	baseline: 'Algernon';
	  		repository:
				'github://HPI-SWA-Teaching/Algernon-Launcher:',
				self currentGitBranch,
				'/packages';
	   	 	onConflict: [:ex | ex allow];
			onWarning: [:w | w resume];
			yourself)