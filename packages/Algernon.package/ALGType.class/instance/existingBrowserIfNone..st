browsing
existingBrowserIfNone: aBlock

	| windows collapsedWindows browserWindow |
	windows := SystemWindow windowsIn: self currentWorld satisfying: [:w | w isCollapsed not].
	browserWindow := windows
		detect: [ :w | w model isKindOf: SystemBrowser default ]
		ifNone: [ ^ aBlock value ].
	^ browserWindow model