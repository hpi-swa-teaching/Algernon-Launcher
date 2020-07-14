cleanup
cleanup 
	| isActive |
	self lastCleanupDate: Date today.
	isActive := ALGCore activateAlgernon.
	ALGCore  initializeGlobalKeyBindings.
	ALGCore allInstancesDo: [ :algcore | algcore delete].
	ALGIconFactory allInstancesDo: [ :factory | factory clearCache]. 
	Smalltalk garbageCollect.
	ALGCore activateAlgernon: isActive.
	ALGItemProvider initializeItems.
	ALGItem clearCommentCache.