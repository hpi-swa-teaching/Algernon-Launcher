helpers
currentSystemWindows
	^ (ActiveWorld submorphs
		select: [:each | each isKindOf: SystemWindow]) asOrderedCollection