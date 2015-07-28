preferences
settingHasChanged

	| settingToggled |
	settingToggled := (Preferences preferenceAt: self nameForPreferenceEntry) preferenceValue.
	settingToggled
		ifTrue: [ self initializeAlgernon ]
		ifFalse: [ self cleanup ]