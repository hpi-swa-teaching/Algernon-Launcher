testing class type
testClassType
	self deny: (ALGClassType classesForCategory: 'Algernon') isEmpty.
	self deny: ALGClassType algertemList isEmpty.