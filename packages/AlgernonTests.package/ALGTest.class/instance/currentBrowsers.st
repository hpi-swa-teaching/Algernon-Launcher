helpers
currentBrowsers

	^ (ActiveWorld submorphs
		select: [:each | (each isKindOf: SystemWindow)
				and: [each model inheritsFromAnyIn: 
					{Browser. PreferenceBrowser. MCWorkingCopyBrowser}]]) asSet