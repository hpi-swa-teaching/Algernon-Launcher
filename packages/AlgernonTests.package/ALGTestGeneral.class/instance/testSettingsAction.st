testing interaction with tools
testSettingsAction
	| oldSettings oldSettingsNumber |
	self runQuery: 'Algernon' withCursorAt: 'Setting'.
	oldSettings := self findSystemWindowsByLabel: 'Preference Browser'.
	oldSettingsNumber := PreferenceBrowser allInstances size.
	self activateCurrentItemAction.
	self assert: PreferenceBrowser allInstances size equals: oldSettingsNumber + 1.
	self deleteNewSystemWindowsByLabel: 'Preference Browser' old: oldSettings