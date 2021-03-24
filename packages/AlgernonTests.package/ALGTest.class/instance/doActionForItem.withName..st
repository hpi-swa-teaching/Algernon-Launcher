helpers
doActionForItem: item withName: aString
	(item algerActions detect:[:action| action name = aString]) do.