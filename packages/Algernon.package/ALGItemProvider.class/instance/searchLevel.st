accessing
searchLevel

	searchLevel ifNil: [ searchLevel := self class defaultSearchLevel ].
	^ searchLevel