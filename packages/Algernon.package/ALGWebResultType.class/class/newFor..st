instance creation
newFor: aJsonObject

	| type |
	
	type := self new.
	type resultTitle: (aJsonObject at: 'title').
	type resultLink: (aJsonObject at: 'link').
	
	^ type