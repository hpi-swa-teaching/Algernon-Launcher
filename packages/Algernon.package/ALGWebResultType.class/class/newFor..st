instance creation
newFor: aJsonObject

	| type |
	type := self new.
	type resultTitle: (aJsonObject at: 'title').
	type resultDisplayLink: (aJsonObject at: 'displayLink').
	type resultLink: (aJsonObject at: 'link').
	^ type