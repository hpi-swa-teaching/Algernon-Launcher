helpers
currentBrowsers
	^ (ActiveWorld submorphs
		select: [:each | each isKindOf: SystemWindow]) asOrderedCollection