as yet unclassified
openCommandsForPlatforms

	^ Dictionary newFrom: {
		'Win32' -> [:link | OSProcess command: 'explorer ', link].
		'unix' -> [:link | 
			(self openLinkOnUnix: link)
				ifFalse: [
					Transcript show: '===Algernon WebSearch==='.
					Transcript cr.
					Transcript show: 'No command found to open URL! See ALGWebResultType class >> unixOpenBrowserCommands'.
					Transcript cr]].
		'Linux' -> [:link | (self openCommandsForPlatforms at: 'unix') value: link].
		'Mac OS' -> [:link | (self openCommandsForPlatforms at: 'unix') value: link]}