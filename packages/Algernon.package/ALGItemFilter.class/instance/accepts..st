filtering
accepts: aStringCollection

	(aStringCollection size <= 1)
		ifTrue: [ ^ false ].
	^ self keywords includes: aStringCollection first