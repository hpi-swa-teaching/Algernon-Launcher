actions
openLink

	| platform |

	platform := OSProcess platformName. "= 'Win32', 'Mac OS', 'Linux', 'unix'"
	(self class openCommandsForPlatforms at: platform) value: self resultLink