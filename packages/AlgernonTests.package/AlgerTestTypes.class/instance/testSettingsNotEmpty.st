testing
testSettingsNotEmpty

	| settings |
	settings := ALGSettingsType algertemList.
	self deny: settings isEmpty
	