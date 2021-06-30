accessing
menuEntries

	(self isDynamic and: [self name = 'Windows'])
		ifTrue: [^ self excludeDynamicWindows].

	^ self enabledMenuSubmorphs