testing repository type
testRepositoryAppearAsChildren
	self runQuery: 'Monticello'.
	self moveCursorTo: 'Package'.
	self algInstance showChildList.
	self deny: (self getResultItemForType: 'Repository') isNil.