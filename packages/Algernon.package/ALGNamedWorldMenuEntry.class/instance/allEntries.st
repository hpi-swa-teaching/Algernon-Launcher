accessing
allEntries
	| entries |
	
	entries := OrderedCollection new.
	
	entries addAll: (self menuEntries inject: OrderedCollection new into: 
		[ :accumulator :entry | accumulator addAll: {entry}, entry allEntries; yourself ]).
	
	^ entries 