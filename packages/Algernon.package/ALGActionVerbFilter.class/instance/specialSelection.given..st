accessing
specialSelection: anItemCollection given: anActionVerb
	anActionVerb = '='
		ifTrue: [ ^ anItemCollection select: [ :each | each algerType class = ALGExpressionType] ].
	
	^ nil 