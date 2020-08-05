helpers
runQuery: query withCursorAt: aCategory
	self runQuery: query.
	self moveCursorTo: aCategory