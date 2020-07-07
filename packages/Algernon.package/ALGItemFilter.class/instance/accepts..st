filtering
accepts: aStringCollection

	(aStringCollection size <= 1)
		ifTrue: [ ^ false ].
	^ self class keywords includes: aStringCollection first