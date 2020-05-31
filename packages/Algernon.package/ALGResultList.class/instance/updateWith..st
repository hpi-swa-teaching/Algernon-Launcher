updating
updateWith: aCollection 
	self removeAllSubmorphs.
	aCollection
		do: [:aCategory | 
			self addCategory: aCategory.
			aCategory items
				do: [:anAlgertem | self add: anAlgertem]]