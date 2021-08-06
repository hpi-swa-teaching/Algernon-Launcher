constants
defaultActivationStrings

	^ Dictionary newFrom: {
		'Mac OS' -> '<Ctrl-;>'.
		'Win32' -> '<Ctrl->'.
		'unix' -> '<Ctrl-Opt-û>'.
		'unknown' -> '<>'
	}