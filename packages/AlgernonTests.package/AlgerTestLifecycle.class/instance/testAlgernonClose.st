testing
testAlgernonClose

	| wasNil |
	wasNil := Algernon currentInstance isNil.
	Algernon close.

	wasNil
		ifTrue: [self assert: Algernon currentInstance isNil]
		ifFalse: [self deny: Algernon currentInstance active]