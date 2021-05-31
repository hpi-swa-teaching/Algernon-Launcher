accessing
update: aSymbol

	aSymbol = #normalKeystroke
		ifTrue: [ self scrollToRight ].
	super update: aSymbol.
	