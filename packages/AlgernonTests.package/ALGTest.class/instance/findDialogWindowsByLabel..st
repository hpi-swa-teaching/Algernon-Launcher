helpers
findDialogWindowsByLabel: aString
	^ self currentDialogWindows select: [:each | each title asString asLowercase includesSubstring: aString asLowercase ]