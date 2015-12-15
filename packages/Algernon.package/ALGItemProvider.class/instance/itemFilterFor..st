filtering
itemFilterFor: aStringCollection

	^ self filters
		detect: [ :each | each accepts: aStringCollection ]
		ifNone: [ ALGRegularFilter new ]