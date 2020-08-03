browsing
existingBrowserIfNone: aBlock

	| windows browserWindow |
	windows := SystemWindow windowsIn: self currentWorld satisfying: [:w | w isCollapsed not].
	browserWindow := windows
		detect: [ :w | w model isKindOf: SystemBrowser default ]
		ifNone: [ ^ aBlock value ].
	^ browserWindow model