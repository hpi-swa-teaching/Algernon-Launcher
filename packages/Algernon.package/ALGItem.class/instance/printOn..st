printing
printOn: aStream

	| title |
	title := self class name.
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: (title,' (');
		nextPutAll: (self name,')')