accessing
parentStack

	parentStack ifNil: [ self parentStack: Stack new ].
	^ parentStack