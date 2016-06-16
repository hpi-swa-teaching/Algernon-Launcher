accessing
algerType: aType

	algerType := aType.
	lowerCaseName := self name asLowercase.
	initials := (self name select: [ :each | each isUppercase ]) asLowercase
	