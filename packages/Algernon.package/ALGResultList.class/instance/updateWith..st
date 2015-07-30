updating
updateWith: aCollection

	self submorphs do: [ :submorph | self submorphs remove: submorph ].
	aCollection copy do: [ :aCategory |
		self addCategory: aCategory.
		aCategory items do: [ :anAlgertem | self add: anAlgertem ] ]