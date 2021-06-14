updating
updateWith: aCollection
	| index |
	
	self removeAllSubmorphs.
	index := 1.
	aCollection do: [ :aCategory |
		self addCategory: aCategory.
		index := index + (self addAll: aCategory items startingAt: index) ]