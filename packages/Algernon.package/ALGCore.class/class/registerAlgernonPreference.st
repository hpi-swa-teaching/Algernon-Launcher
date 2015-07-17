preferences
registerAlgernonPreference

	Preferences addBooleanPreference: (self nameForPreferenceEntry) category: #Algernon default: (self defaultPreferenceSetting) balloonHelp: (self balloonHelpText).
	(Preferences preferenceAt: (self nameForPreferenceEntry)) changeInformee: ALGCore changeSelector: #settingHasChanged.