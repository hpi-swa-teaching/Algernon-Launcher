updating
updateWith: aCollection 
	self removeAllSubmorphs.
	aCollection copy
		do: [:aCategory | 
			self addCategory: aCategory.
			aCategory items
				do: [:anAlgertem | self add: anAlgertem]]