accessing
algertype: aType

	algertype := aType.
	lowerCaseName := self name asLowercase.
	initials := (self name select: [ :each | each isUppercase ]) asLowercase
	