accessing
algerType: aType
	algerType:= aType.
	self initials:(self name select: [ :each | each isUppercase ]) asLowercase
	