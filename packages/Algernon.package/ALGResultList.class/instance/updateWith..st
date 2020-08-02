updating
updateWith: aCollection
	self removeAllSubmorphs.
	aCollection do: [ :aCategory |
		self addCategory: aCategory.
		self addAll: aCategory items ]