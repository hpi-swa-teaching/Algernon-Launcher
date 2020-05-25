helpers
findNewPluggableSystemWindowsByLabel: aString old: oldWindows
	^ ((self findPluggableSystemWindowsByLabel: aString)
		select: [:each | (oldWindows includes: each) not])