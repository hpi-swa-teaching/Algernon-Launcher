cleanup
cleanup 
	| isActive |
	self lastCleanupDate: Date today.
	isActive := ALGCore activateAlgernon.
	ALGCore  initializeGlobalKeyBindings.
	ALGCore allSubInstancesDo: [ :algcore | algcore delete].
	ALGIconFactory allInstancesDo: [ :factory | factory clearCache].
	ALGIconFactory initializeFileMapping.
	Smalltalk garbageCollect.
	ALGCore activateAlgernon: isActive.
	ALGItemProvider initializeItems.
	ALGItem clearCommentCache.