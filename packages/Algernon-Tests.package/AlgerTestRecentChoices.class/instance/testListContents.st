testing
testListContents
	"Make sure we receive a list of senders and receivers"
	self ensureMorphic.

	self assert: (algerstance relevantAlgertemsFor: 'activate') size > 0.

	^ nil