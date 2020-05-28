accessing
algerType: aType

	self algerType: aType.
	self lowerCaseName: self name asLowercase.
	self initials:(self name select: [ :each | each isUppercase ]) asLowercase
	