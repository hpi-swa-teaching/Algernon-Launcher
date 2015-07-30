accessing
oldFoci

	oldFoci ifNil: [ self oldFoci: (WeakArray new: 2) ].
	^ oldFoci