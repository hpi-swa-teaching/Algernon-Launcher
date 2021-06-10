instance creation
newFrom: aMorph name: aString

	^ (self new)
			name: aString;
			morph: aMorph;
			yourself.