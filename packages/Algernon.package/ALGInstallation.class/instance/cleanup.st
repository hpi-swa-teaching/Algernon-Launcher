cleanup
cleanup 
	| isActive |
	self lastCleanupDate: Date today.
	isActive := Algernon activateAlgernon.
	Algernon allInstancesDo: [ :algernon | algernon delete].
	ALGCore allInstancesDo: [ :algcore | algcore delete].
	ALGCache allInstancesDo: [ :cache | cache clear]. 
	ALGIconFactory allInstancesDo: [ :factory | factory clearCache]. 
	Smalltalk garbageCollect.
	Algernon activateAlgernon: isActive.
	ALGItemProvider initializeItems.
	ALGItem clearCommentCache