caching
commentCache

	commentCache ifNil: [ commentCache := self buildCommentCache ].
	^ commentCache