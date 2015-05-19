helpers
currentBrowsers
	^ (ActiveWorld submorphs
		select: [:each | (each isKindOf: SystemWindow)
				and: [each model isKindOf: Browser]]) asSet