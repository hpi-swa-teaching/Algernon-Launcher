updating
updateWith: aCollection
	self removeAllSubmorphs.
	self currentItemIndex: 1.
	aCollection do: [ :aCategory |
		self addCategory: aCategory.
		self addAll: aCategory items ]