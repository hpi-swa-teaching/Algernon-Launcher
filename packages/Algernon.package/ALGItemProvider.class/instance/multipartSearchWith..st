filtering
multipartSearchWith: aCollection

	| parts |
	parts := aCollection.
	(ALGAction validVerbs includes: parts first)
		ifTrue: [ ^ self actionSearchWith: parts ].
	^ self childSearchWith: parts