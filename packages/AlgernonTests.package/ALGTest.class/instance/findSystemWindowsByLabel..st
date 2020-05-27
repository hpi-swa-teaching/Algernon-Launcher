helpers
findSystemWindowsByLabel: aString
	^ SystemWindow allSubInstances select: [:each | each knownName includesSubstring: aString ]