helpers
findSystemWindowsByLabel: aString
	^ self currentSystemWindows select: [:each | each knownName includesSubstring: aString ]