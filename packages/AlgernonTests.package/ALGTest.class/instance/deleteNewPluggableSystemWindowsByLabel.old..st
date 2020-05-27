helpers
deleteNewPluggableSystemWindowsByLabel: aString old: oldWindows
	^ (self findNewPluggableSystemWindowsByLabel: aString old: oldWindows)
		do: [:each | each delete].