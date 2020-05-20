initialization
filters
	^ OrderedCollection newFrom: {
		ALGHelpFilter new.
		ALGActionVerbFilter new.
		ALGCommentFilter new.
		ALGRegularFilter new.
	}