accessing
cleanup 
	| isActive |
	isActive := Algernon activateAlgernon.
	Algernon allInstancesDo: [ :algernon | algernon delete].
	ALGCore allInstancesDo: [ :algcore | algcore delete].
	ALGCache allInstancesDo: [ :cache | cache clear]. 
	Smalltalk garbageCollect.
	Algernon activateAlgernon: isActive.
	ALGItemProvider initializeItems.
	ALGItem clearCommentCache