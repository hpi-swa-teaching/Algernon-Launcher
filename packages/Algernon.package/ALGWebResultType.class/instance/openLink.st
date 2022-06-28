actions
openLink

	| platform |

	platform := OSProcess platformName. "= 'Win32', 'Mac OS', 'Linux', 'unix'"
	(platform = 'Win32')
		ifTrue: [OSProcess command: 'explorer ', self resultLink].
	(platform = 'Mac OS')
		ifTrue: [OSProcess command: 'open ', self resultLink].
	(platform = 'unix' or: [platform = 'Linux'])
		ifTrue: [
			(self openLinkOnUnix: self resultLink)
				ifFalse: [
					Transcript show: '===Algernon WebSearch==='.
					Transcript cr.
					Transcript show: 'No command found to open URL! See ALGWebResultType class >> unixOpenBrowserCommands'.
					Transcript cr]]