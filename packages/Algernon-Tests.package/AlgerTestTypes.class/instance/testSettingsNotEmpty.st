as yet unclassified
testSettingsNotEmpty

	| settings |
	settings := ALGSettingsType algertemList.
	self deny: settings isEmpty
	