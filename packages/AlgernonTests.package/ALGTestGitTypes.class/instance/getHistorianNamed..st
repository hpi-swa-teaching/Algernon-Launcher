helpers
getHistorianNamed: aString

	^ (self mockWorkingCopy repository historians select: [:each | each shortName = aString]) first