accessing
allEntries
	^ self menuEntries inject: OrderedCollection new into: 
		[ :accumulator :entry | accumulator addAll: {entry}, entry allEntries; yourself ]