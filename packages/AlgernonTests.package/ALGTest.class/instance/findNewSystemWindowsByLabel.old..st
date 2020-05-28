helpers
findNewSystemWindowsByLabel: aString old: oldWindows
	^ ((self findSystemWindowsByLabel: aString)
		select: [:each | (oldWindows includes: each) not])