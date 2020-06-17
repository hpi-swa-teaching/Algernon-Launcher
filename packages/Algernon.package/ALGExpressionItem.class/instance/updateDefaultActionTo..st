relevant
updateDefaultActionTo: anActionVerb 
	anActionVerb = '='
		ifTrue: [super updateDefaultActionTo: 'print']
		ifFalse: [super updateDefaultActionTo: 'do']