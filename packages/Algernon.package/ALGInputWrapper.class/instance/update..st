updating
update: aSymbol

	aSymbol = #normalKeystroke
		ifTrue: [ self inputfield paragraph caretRect
						ifNotNil: [ :rect | self scrollToShow: rect ] ].
	super update: aSymbol