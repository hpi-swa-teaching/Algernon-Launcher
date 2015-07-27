updating
updateWith: aCollection

	self submorphs do: [ :submorph | self submorphs remove: submorph ].
	aCollection copy do: [ :anAlgercat |
		self addCategory: anAlgercat.
		anAlgercat algertems do: [ :anAlgertem |
			self add: anAlgertem ]]