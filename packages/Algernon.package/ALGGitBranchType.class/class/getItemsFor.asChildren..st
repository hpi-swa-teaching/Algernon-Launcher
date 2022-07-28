algertem lists
getItemsFor: aProject asChildren: aBoolean
	
	^ (self getHistoriansFor: aProject)
			collect: [ :each | ALGItem withAlgertype: (self with: each project: aProject asChild: aBoolean) ]