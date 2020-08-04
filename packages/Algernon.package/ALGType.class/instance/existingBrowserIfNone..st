browsing
existingBrowserIfNone: aBlock

	| windows browserWindow |
	windows := SystemWindow windowsIn: self currentWorld satisfying: [:w | w isCollapsed not].
	browserWindow := windows
		detect: [:each | each knownName asLowercase includesSubstring: 'system browser']
		ifNone: [ ^ aBlock value ].
	^ browserWindow model