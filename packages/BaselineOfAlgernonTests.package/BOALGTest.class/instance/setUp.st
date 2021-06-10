running
setUp
	
	self timeout: 60.
	self metacelloInstance: 
	(Metacello new
   	 	baseline: 'Algernon';
  		repository: 'github://HPI-SWA-Teaching/Algernon-Launcher:feat%2Freload-classes/packages';
   	 	onConflict: [:ex | ex allow])
