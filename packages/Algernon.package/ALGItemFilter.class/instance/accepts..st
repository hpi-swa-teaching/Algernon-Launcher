filtering
accepts: aStringCollection

	(aStringCollection size <= 1)
		ifTrue: [ ^ false ].
	^ self selectors includes: aStringCollection first