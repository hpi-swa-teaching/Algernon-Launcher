as yet unclassified
algertemList

	^ SquotWorkingCopy registered
		collect: [ :each | ALGItem withAlgertype: (self with: each) ]