testing
testListContents
	"Make sure Lists are okay"
	self ensureMorphic.

	self assert: (algerstance relevantAlgertemsFor:'Algernon') size > 0.

	^ nil