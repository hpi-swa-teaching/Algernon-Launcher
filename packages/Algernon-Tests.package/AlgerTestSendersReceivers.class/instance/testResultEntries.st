testing
testResultEntries
	self ensureMorphic.
	self assert: (algerstance relevantAlgertemsFor: 'abandon') contains: 'Senders of Morph#abandon'.
	self assert: (algerstance relevantAlgertemsFor: 'abandon') contains: 'Receivers of Morph#abandon'.
	^ nil
