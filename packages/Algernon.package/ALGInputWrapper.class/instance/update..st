accessing
update: aSymbol

	aSymbol = #normalKeystroke
		ifTrue: [
			self inputfield paragraph caretRect ifNotNil: [ :rect | self scrollToShow: rect ].
			"self inputfield focus "].
	super update: aSymbol