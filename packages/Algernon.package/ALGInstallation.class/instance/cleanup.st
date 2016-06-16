accessing
cleanup 
	| isActive |
	isActive := Algernon activateAlgernon.
	ALGCache allInstancesDo: [ :cache | cache clear]. 
	ALGItemProvider initializeItems.
	Algernon allInstancesDo: [ :algernon | algernon delete].
	ALGCore allInstancesDo: [ :algernon | algernon delete].
	Smalltalk garbageCollect.
	Algernon activateAlgernon: isActive