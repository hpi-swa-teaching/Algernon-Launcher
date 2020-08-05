testing class type
testClassType
	self deny: (ALGClassType classesForCategory: 'Algernon') isEmpty.
	self denyTypeIsEmpty: ALGClassType