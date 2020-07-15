as yet unclassified
algertemList
	
	^ {ALGItem withAlgertype: (self new: 'save' commandBlock: [Smalltalk saveSession.]).
		ALGItem withAlgertype: (self new: 'quit' commandBlock: [Smalltalk snapshot: false andQuit: true.]).
		ALGItem withAlgertype: (self new: 'saveandquit' commandBlock: [Smalltalk snapshot: true andQuit: true.])}