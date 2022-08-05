testing
testWebKeyword

	self runQuery: 'web whats obamas last name'.
	self assert: self items size = 1.
	self assert: self nameOfFirstResult equals: 'Search the web'