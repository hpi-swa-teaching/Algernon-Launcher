testing
testAlgernonClose

	| wasNil |
	wasNil := ALGCore currentInstance isNil.
	ALGCore close.

	wasNil
		ifTrue: [self assert: ALGCore currentInstance isNil]
		ifFalse: [self deny: ALGCore currentInstance active]