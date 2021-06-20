constants
defaultActivationStrings

	^ Dictionary newFrom: {
		'Mac OS2' -> '<Ctrl-;>'.
		'Win32' -> '<Ctrl->'.
		'unix' -> '<Ctrl-;>'.
		'unknown' -> '<>'
	}