algertem lists
getItemsFor: aProject
	
	^ (self getHistoriansFor: aProject)
			collect: [ :each | ALGItem withAlgertype: (self with: each project: aProject) ]