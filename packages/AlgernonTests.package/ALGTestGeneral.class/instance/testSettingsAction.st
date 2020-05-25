testing
testSettingsAction
	| oldSettings oldSettingsNumber |
	self runQuery: 'Algernon'.
	self moveCursorTo: 'Setting'.

	oldSettings := self findPluggableSystemWindowsByLabel: 'Preference Browser'.
	oldSettingsNumber := PreferenceBrowser allInstances size.
	
	self activateCurrentItemAction.
	self assert: (PreferenceBrowser allInstances size = (oldSettingsNumber + 1)).

	self deleteNewPluggableSystemWindowsByLabel: 'Preference Browser' old: oldSettings.