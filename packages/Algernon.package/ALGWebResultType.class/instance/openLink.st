actions
openLink

	| processClass platform |
	
	processClass := OSProcess.
	ALGOSProcess ifNotNil: [processClass := ALGOSProcess].
	
	platform := processClass platformName. "= 'Win32', 'Mac OS', 'Linux', 'unix'"
	(self class openCommandsForPlatforms at: platform) value: self resultLink