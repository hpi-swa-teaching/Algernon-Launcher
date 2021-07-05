accessing
subMenus
	| entries |
	
	entries := OrderedCollection new.

	entries addAll: self menuEntries.
	
	entries addAll: (self menuEntries inject: OrderedCollection new into: 
		[ :accumulator :entry | accumulator addAll: entry subMenus ]).
	
	^ entries 