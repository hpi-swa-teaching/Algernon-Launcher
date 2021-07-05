algertem lists
allEntries

	|entries|
	
	entries := OrderedCollection new.
	
	entries addAll: self menuEntries.
	entries addAll: (self menuEntries
		inject: OrderedCollection new into: [:accumulator :entry | accumulator addAll: entry allEntries; yourself]).
	
	^ entries