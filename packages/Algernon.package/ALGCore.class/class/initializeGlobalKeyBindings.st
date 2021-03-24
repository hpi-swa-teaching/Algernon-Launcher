initialization
initializeGlobalKeyBindings

	KeyBindings := Dictionary newFrom:
		{ '<down>' -> [:anEvent :morph | morph selectNext]. 
		'<up>' -> [:anEvent :morph | morph selectPrevious]. 
		'<tab>' -> [:anEvent :morph |  morph showChildList]. 
		'<Shift-tab>' -> [:anEvent :morph | morph showParentList]. 
		'<escape>' -> [:anEvent :morph | morph deactivate: anEvent hand]. 
		'<cr>' -> [:anEvent :morph | morph doActionOnSelectedEvent:anEvent] }