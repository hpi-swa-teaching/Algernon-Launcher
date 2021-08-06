helpers
findNewDialogWindowsByLabel: aString old: oldWindows
	^ ((self findDialogWindowsByLabel: aString)
		select: [:each | (oldWindows includes: each) not])