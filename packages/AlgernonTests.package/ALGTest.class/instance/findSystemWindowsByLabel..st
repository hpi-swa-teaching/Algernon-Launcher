helpers
findSystemWindowsByLabel: aString
	^ SystemWindow allInstances select: [:each | each knownName includesSubstring: aString ]