helpers
deleteNewPluggableSystemWindowsByLabel: aString old: oldWindows
	^ ((self findPluggableSystemWindowsByLabel: aString)
		select: [:each | (oldWindows includes: each) not])
		do: [:each | each delete].