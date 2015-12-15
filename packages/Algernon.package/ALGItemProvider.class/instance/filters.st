accessing
filters
	
	^ OrderedCollection newFrom: {
		ALGActionVerbFilter new.
		ALGCommentFilter new.
		ALGRegularFilter new.
	}