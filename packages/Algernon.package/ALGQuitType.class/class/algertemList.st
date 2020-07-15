as yet unclassified
algertemList
	
	^ {ALGItem withAlgertype: (self new: 'save' commandBlock: [Smalltalk saveSession.]).
		ALGItem withAlgertype: (self new: 'quit' commandBlock: [self halt.]).
		ALGItem withAlgertype: (self new: 'saveandquit' commandBlock: [Smalltalk saveAndQuitSqueak.])}