helpers
findSystemWindowsByLabel: aString
	^ self currentSystemWindows select: [:each | each knownName asLowercase includesSubstring: (aString asLowercase) ]