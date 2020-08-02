algertem lists
algertemListWith: aWorkingCopyLabel 
	^ (self getReposFor: aWorkingCopyLabel)
		collect: [:each | ALGItem withAlgertype: (self 
       withType: each description 
       withPackage: aWorkingCopyLabel)]