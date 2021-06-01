accessing
update: aSymbol

	aSymbol = #normalKeystroke ifTrue: [ self scrollCalls: self scrollCalls + 1 ]