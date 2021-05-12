running
setUp
	
	self timeout: 25.
	self metacelloInstance: 
	(Metacello new
   	 	baseline: 'Algernon';
  		repository: 'github://HPI-SWA-Teaching/Algernon-Launcher:auto-activate/packages';
   	 	onConflict: [:ex | ex allow])