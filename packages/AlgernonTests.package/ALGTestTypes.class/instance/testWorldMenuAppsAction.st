testing world menu types
testWorldMenuAppsAction
	| oldSettingsSize |
	oldSettingsSize := (self findSystemWindowsByLabel: 'Preference Browser') size.
	(ALGItem withAlgertype: 
		(ALGWorldMenuAppsType with: {'Preference Browser'. {PreferenceBrowser. #open}})) 
		defaultAlgeraction do.
	self assert: (self findSystemWindowsByLabel: 'Preference Browser') size
		equals: oldSettingsSize + 1