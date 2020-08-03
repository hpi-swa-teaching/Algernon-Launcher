filtering
accepts: aStringCollection

	(aStringCollection size <= 1)
		ifFalse: [ ^ self class keywords includes: aStringCollection first ].
	^ false