filtering
accepts: aStringCollection

	^ (aStringCollection size > 1) and: [ self class keywords includes: aStringCollection first ]