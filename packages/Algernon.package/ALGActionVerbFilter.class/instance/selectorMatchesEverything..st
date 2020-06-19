accessing
selectorMatchesEverything: aSelector
	^ aSelector = '=' or: [aSelector = 'do' ]