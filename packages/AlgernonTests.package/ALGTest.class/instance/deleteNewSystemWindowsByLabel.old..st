helpers
deleteNewSystemWindowsByLabel: aString old: oldWindows
	^ (self findNewSystemWindowsByLabel: aString old: oldWindows)
		do: [:each | each delete].