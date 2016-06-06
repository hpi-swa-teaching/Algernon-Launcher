caching
methodCache

	methodCache ifNil: [ methodCache := self buildMethodCache ].
	^ methodCache