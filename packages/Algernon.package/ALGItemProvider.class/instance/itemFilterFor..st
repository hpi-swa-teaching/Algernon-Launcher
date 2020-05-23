filtering
itemFilterFor: aStringCollection

	^ self class filters
		detect: [ :each | each accepts: aStringCollection ]
		ifNone: [ ALGRegularFilter new ]